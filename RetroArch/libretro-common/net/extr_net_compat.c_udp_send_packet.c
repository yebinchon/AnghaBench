
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct addrinfo {struct addrinfo* ai_next; int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; int member_0; } ;
typedef scalar_t__ ssize_t ;
typedef int port_buf ;


 int SOCK_DGRAM ;
 int freeaddrinfo_retro (struct addrinfo*) ;
 scalar_t__ getaddrinfo_retro (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ sendto (int,char const*,scalar_t__,int ,int ,int ) ;
 int snprintf (char*,int,char*,unsigned short) ;
 int socket (int ,int ,int ) ;
 int socket_close (int) ;
 scalar_t__ strlen (char const*) ;

bool udp_send_packet(const char *host,
      uint16_t port, const char *msg)
{
   char port_buf[16] = {0};
   struct addrinfo hints = {0};
   struct addrinfo *res = ((void*)0);
   const struct addrinfo *tmp = ((void*)0);
   int fd = -1;
   bool ret = 1;

   hints.ai_socktype = SOCK_DGRAM;

   snprintf(port_buf, sizeof(port_buf), "%hu", (unsigned short)port);

   if (getaddrinfo_retro(host, port_buf, &hints, &res) != 0)
      return 0;



   tmp = (const struct addrinfo*)res;
   while (tmp)
   {
      ssize_t len, ret_len;

      fd = socket(tmp->ai_family, tmp->ai_socktype, tmp->ai_protocol);
      if (fd < 0)
      {
         ret = 0;
         goto end;
      }

      len = strlen(msg);
      ret_len = sendto(fd, msg, len, 0, tmp->ai_addr, tmp->ai_addrlen);

      if (ret_len < len)
      {
         ret = 0;
         goto end;
      }

      socket_close(fd);
      fd = -1;
      tmp = tmp->ai_next;
   }

end:
   freeaddrinfo_retro(res);
   if (fd >= 0)
      socket_close(fd);
   return ret;
}
