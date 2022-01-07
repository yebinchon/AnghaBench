
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 scalar_t__* client_memory ;
 int client_pages ;

__attribute__((used)) static void
client_work_atom(void)
{
 static int i;

 if (++i > client_pages * PAGE_SIZE / sizeof(long))
  i = 0;
 client_memory[i] = 0;
}
