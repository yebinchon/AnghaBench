
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* m_data; struct TYPE_4__* m_next; } ;
typedef TYPE_1__ NetlinkList ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void freeResultList(NetlinkList *p_list)
{
   NetlinkList *l_cur;
   while(p_list)
   {
      l_cur = p_list;
      p_list = p_list->m_next;
      free(l_cur->m_data);
      free(l_cur);
   }
}
