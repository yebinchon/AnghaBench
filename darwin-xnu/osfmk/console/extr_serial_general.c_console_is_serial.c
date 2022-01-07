
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ SERIAL_CONS_OPS ;
 scalar_t__ cons_ops_index ;

boolean_t
console_is_serial(void)
{
 return (cons_ops_index == SERIAL_CONS_OPS);
}
