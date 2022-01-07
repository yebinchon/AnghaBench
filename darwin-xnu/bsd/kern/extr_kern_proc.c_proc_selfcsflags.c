
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p_csflags; } ;


 TYPE_1__* current_proc () ;

int
proc_selfcsflags(void)
{
 return (current_proc()->p_csflags);
}
