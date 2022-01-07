
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;


 int pgrp_remove (int ) ;

int
leavepgrp(proc_t p)
{

 pgrp_remove(p);
 return (0);
}
