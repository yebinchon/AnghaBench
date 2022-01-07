
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vc_container_net_status_t ;
typedef int name ;
typedef int buffer ;
typedef int VC_CONTAINER_NET_T ;


 int MAX_BUFFER_LEN ;
 int MAX_NAME_LEN ;
 int VC_CONTAINER_NET_ERROR_CONNECTION_LOST ;
 int VC_CONTAINER_NET_OPEN_FLAG_STREAM ;
 int VC_CONTAINER_NET_SUCCESS ;
 scalar_t__ isalpha (unsigned char) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int sscanf (char*,char*,int*) ;
 int strcpy (char*,char*) ;
 int vc_container_net_accept (int *,int **) ;
 int vc_container_net_close (int *) ;
 int vc_container_net_get_client_name (int *,char*,int) ;
 int vc_container_net_get_client_port (int *,unsigned short*) ;
 int vc_container_net_listen (int *,int) ;
 int * vc_container_net_open (int *,char*,int ,int*) ;
 size_t vc_container_net_read (int *,char*,int) ;
 int vc_container_net_status (int *) ;
 size_t vc_container_net_write (int *,char*,size_t) ;

int main(int argc, char **argv)
{
   VC_CONTAINER_NET_T *server_sock, *sock;
   vc_container_net_status_t status;
   char buffer[MAX_BUFFER_LEN];
   char name[MAX_NAME_LEN];
   unsigned short port;
   int ii, connections = 1;
   size_t received;

   if (argc < 2)
   {
      printf("Usage:\n%s <port> [<connections>]\n", argv[0]);
      return 1;
   }

   server_sock = vc_container_net_open(((void*)0), argv[1], VC_CONTAINER_NET_OPEN_FLAG_STREAM, &status);
   if (!server_sock)
   {
      printf("vc_container_net_open failed: %d\n", status);
      return 2;
   }

   if (argc > 2)
   {
      sscanf(argv[2], "%d", &connections);
   }

   status = vc_container_net_listen(server_sock, connections);
   if (status != VC_CONTAINER_NET_SUCCESS)
   {
      printf("vc_container_net_listen failed: %d\n", status);
      vc_container_net_close(server_sock);
      return 3;
   }

   for (ii = 0; ii < connections; ii++)
   {
      status = vc_container_net_accept(server_sock, &sock);
      if (status != VC_CONTAINER_NET_SUCCESS)
      {
         printf("vc_container_net_accept failed: %d\n", status);
         vc_container_net_close(server_sock);
         return 3;
      }

      strcpy(name, "<unknown>");
      vc_container_net_get_client_name(sock, name, sizeof(name));
      vc_container_net_get_client_port(sock, &port);
      printf("Connection from %s:%hu\n", name, port);

      while ((received = vc_container_net_read(sock, buffer, sizeof(buffer) - 1)) != 0)
      {
         char *ptr = buffer;
         size_t jj;

         printf("Rx:");


         for (jj = 0; jj < received; jj++, ptr++)
         {
            char c = *ptr;

            putchar(c);
            if (isalpha((unsigned char)c))
               *ptr ^= 0x20;
         }

         ptr = buffer;

         printf("Tx:");
         while (received)
         {
            size_t sent;

            sent = vc_container_net_write(sock, ptr, received);
            if (!sent)
            {
               status = vc_container_net_status(sock);
               printf("vc_container_net_write failed: %d\n", status);
               break;
            }


            while (sent--)
            {
               received--;
               putchar(*ptr++);
            }
         }
      }

      status = vc_container_net_status(sock);

      if (status != VC_CONTAINER_NET_SUCCESS && status != VC_CONTAINER_NET_ERROR_CONNECTION_LOST)
         break;

      vc_container_net_close(sock);
   }

   if (status != VC_CONTAINER_NET_SUCCESS)
   {
      printf("vc_container_net_read failed: %d\n", status);
   }

   vc_container_net_close(server_sock);

   return 0;
}
