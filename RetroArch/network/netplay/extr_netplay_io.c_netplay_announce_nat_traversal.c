
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int ext_inet6_addr; scalar_t__ have_inet6; int ext_inet4_addr; scalar_t__ have_inet4; } ;
struct TYPE_5__ {TYPE_1__ nat_traversal_state; } ;
typedef TYPE_2__ netplay_t ;
typedef int msg ;


 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_PUBLIC_ADDRESS ;
 int MSG_UPNP_FAILED ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int PATH_MAX_LENGTH ;
 int RARCH_LOG (char*,char*) ;
 scalar_t__ getnameinfo (struct sockaddr const*,int,char*,int,char*,int,int) ;
 char* msg_hash_to_str (int ) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 int snprintf (char*,int,char*,char*,...) ;

void netplay_announce_nat_traversal(netplay_t *netplay)
{

   char msg[4200], host[PATH_MAX_LENGTH], port[6];

   if (netplay->nat_traversal_state.have_inet4)
   {
      if (getnameinfo((const struct sockaddr *) &netplay->nat_traversal_state.ext_inet4_addr,
               sizeof(struct sockaddr_in),
               host, PATH_MAX_LENGTH, port, 6, NI_NUMERICHOST|NI_NUMERICSERV) != 0)
         return;

   }
   else
   {
      snprintf(msg, sizeof(msg), "%s\n",
            msg_hash_to_str(MSG_UPNP_FAILED));
      runloop_msg_queue_push(msg, 1, 180, 0, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      RARCH_LOG("[netplay] %s\n", msg);
      return;
   }

   snprintf(msg, sizeof(msg), "%s: %s:%s\n",
         msg_hash_to_str(MSG_PUBLIC_ADDRESS),
         host, port);
   runloop_msg_queue_push(msg, 1, 180, 0, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   RARCH_LOG("[netplay] %s\n", msg);

}
