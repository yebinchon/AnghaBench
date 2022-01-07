
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btstack_hid_adapter {scalar_t__ state; } ;


 scalar_t__ BTPAD_EMPTY ;
 unsigned int MAX_USERS ;
 struct btstack_hid_adapter* g_connections ;

__attribute__((used)) static struct btstack_hid_adapter *btpad_find_empty_connection(void)
{
   unsigned i;

   for (i = 0; i < MAX_USERS; i++)
   {
      if (g_connections[i].state == BTPAD_EMPTY)
         return &g_connections[i];
   }

   return 0;
}
