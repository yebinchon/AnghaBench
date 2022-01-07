
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_i2cconfig () ;
 int register_i2cdectect () ;
 int register_i2cdump () ;
 int register_i2cget () ;
 int register_i2cset () ;

void register_i2ctools(void)
{
    register_i2cconfig();
    register_i2cdectect();
    register_i2cget();
    register_i2cset();
    register_i2cdump();
}
