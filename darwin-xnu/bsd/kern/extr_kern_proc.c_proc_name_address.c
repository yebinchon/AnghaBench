
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_2__ {char* p_comm; } ;



char *
proc_name_address(void *p)
{
 return &((proc_t)p)->p_comm[0];
}
