
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;


 int kfree (void*,int ) ;

void
ipc_table_free(
 vm_size_t size,
 void * table)
{
 kfree(table, size);
}
