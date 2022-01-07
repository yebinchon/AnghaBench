
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vc_container_net_status_t ;
typedef int VC_CONTAINER_NET_T ;


 int VC_CONTAINER_NET_SUCCESS ;
 scalar_t__ malloc (size_t) ;
 int printf (char*,...) ;
 int putchar (int ) ;
 int vc_container_net_close (int *) ;
 size_t vc_container_net_maximum_datagram_size (int *) ;
 int * vc_container_net_open (int *,char*,int ,int*) ;
 size_t vc_container_net_read (int *,char*,size_t) ;
 int vc_container_net_status (int *) ;

int main(int argc, char **argv)
{
   VC_CONTAINER_NET_T *sock;
   vc_container_net_status_t status;
   char *buffer;
   size_t buffer_size;
   size_t received;

   if (argc < 2)
   {
      printf("Usage:\n%s <port>\n", argv[0]);
      return 1;
   }

   sock = vc_container_net_open(((void*)0), argv[1], 0, &status);
   if (!sock)
   {
      printf("vc_container_net_open failed: %d\n", status);
      return 2;
   }

   buffer_size = vc_container_net_maximum_datagram_size(sock);
   buffer = (char *)malloc(buffer_size);
   if (!buffer)
   {
      vc_container_net_close(sock);
      printf("Failure allocating buffer\n");
      return 3;
   }

   while ((received = vc_container_net_read(sock, buffer, buffer_size)) != 0)
   {
      char *ptr = buffer;

      while (received--)
         putchar(*ptr++);
   }

   if (vc_container_net_status(sock) != VC_CONTAINER_NET_SUCCESS)
   {
      printf("vc_container_net_read failed: %d\n", vc_container_net_status(sock));
   }

   vc_container_net_close(sock);

   return 0;
}
