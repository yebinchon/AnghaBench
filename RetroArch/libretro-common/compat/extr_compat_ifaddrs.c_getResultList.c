
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct nlmsghdr {int dummy; } ;
struct TYPE_5__ {struct TYPE_5__* m_next; } ;
typedef TYPE_1__ NetlinkList ;


 int freeResultList (TYPE_1__*) ;
 struct nlmsghdr* getNetlinkResponse (int,int*,int*) ;
 scalar_t__ netlink_send (int,int) ;
 TYPE_1__* newListItem (struct nlmsghdr*,int) ;

__attribute__((used)) static NetlinkList *getResultList(int p_socket, int p_request)
{
   if(netlink_send(p_socket, p_request) < 0)
      return ((void*)0);

   NetlinkList *l_list = ((void*)0);
   NetlinkList *l_end = ((void*)0);
   int l_size;
   int l_done = 0;
   while(!l_done)
   {
      NetlinkList *l_item = ((void*)0);
      struct nlmsghdr *l_hdr = getNetlinkResponse(p_socket, &l_size, &l_done);
      if(!l_hdr)
         goto error;

      l_item = newListItem(l_hdr, l_size);
      if (!l_item)
         goto error;

      if(!l_list)
         l_list = l_item;
      else
         l_end->m_next = l_item;
      l_end = l_item;
   }

   return l_list;

error:
   freeResultList(l_list);
   return ((void*)0);
}
