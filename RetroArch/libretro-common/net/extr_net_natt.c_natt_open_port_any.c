
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct net_ifinfo_entry {int host; } ;
struct net_ifinfo {size_t size; struct net_ifinfo_entry* entries; } ;
struct natt_status {int dummy; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int member_0; } ;
typedef int port_str ;
typedef enum socket_protocol { ____Placeholder_socket_protocol } socket_protocol ;


 int freeaddrinfo_retro (struct addrinfo*) ;
 scalar_t__ getaddrinfo_retro (int ,char*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ natt_open_port (struct natt_status*,int ,int ,int) ;
 int net_ifinfo_free (struct net_ifinfo*) ;
 int net_ifinfo_new (struct net_ifinfo*) ;
 int snprintf (char*,int,char*,int ) ;
 scalar_t__ string_is_equal (int ,char*) ;

bool natt_open_port_any(struct natt_status *status,
      uint16_t port, enum socket_protocol proto)
{

   size_t i;
   char port_str[6];
   struct net_ifinfo list;
   struct addrinfo hints = {0}, *addr;
   bool ret = 0;

   snprintf(port_str, sizeof(port_str), "%hu", port);


   if (!net_ifinfo_new(&list))
      return 0;


   for (i = 0; i < list.size; i++)
   {
      struct net_ifinfo_entry *entry = list.entries + i;


      if ( string_is_equal(entry->host, "127.0.0.1") ||
            string_is_equal(entry->host, "::1"))
         continue;


      if (getaddrinfo_retro(entry->host, port_str, &hints, &addr) == 0)
      {
         ret = natt_open_port(status, addr->ai_addr,
               addr->ai_addrlen, proto) || ret;
         freeaddrinfo_retro(addr);
      }
   }

   net_ifinfo_free(&list);

   return ret;




}
