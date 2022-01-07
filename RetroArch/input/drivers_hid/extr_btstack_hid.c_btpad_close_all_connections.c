
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CFRunLoopGetCurrent () ;
 int CFRunLoopStop (int ) ;
 unsigned int MAX_USERS ;
 int btpad_close_connection (int *) ;
 int * g_connections ;

__attribute__((used)) static void btpad_close_all_connections(void)
{
   unsigned i;

   for (i = 0; i < MAX_USERS; i ++)
      btpad_close_connection(&g_connections[i]);




}
