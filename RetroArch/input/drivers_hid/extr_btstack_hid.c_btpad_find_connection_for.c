
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct btstack_hid_adapter {scalar_t__ handle; int address; scalar_t__ has_address; } ;
typedef scalar_t__ bd_addr_t ;


 scalar_t__ BD_ADDR_CMP (scalar_t__,int ) ;
 unsigned int MAX_USERS ;
 struct btstack_hid_adapter* g_connections ;

__attribute__((used)) static struct btstack_hid_adapter *btpad_find_connection_for(
      uint16_t handle, bd_addr_t address)
{
   unsigned i;

   for (i = 0; i < MAX_USERS; i++)
   {
      if (!g_connections[i].handle && !g_connections[i].has_address)
         continue;

      if (handle && g_connections[i].handle
            && handle != g_connections[i].handle)
         continue;

      if (address && g_connections[i].has_address
            && (BD_ADDR_CMP(address, g_connections[i].address)))
         continue;

      return &g_connections[i];
   }

   return 0;
}
