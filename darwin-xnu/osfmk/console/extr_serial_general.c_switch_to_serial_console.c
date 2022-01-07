
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERIAL_CONS_OPS ;
 int cons_ops_index ;

int
switch_to_serial_console(void)
{
 int old_cons_ops = cons_ops_index;
 cons_ops_index = SERIAL_CONS_OPS;
 return old_cons_ops;
}
