
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* on; } ;
typedef TYPE_1__ st_number_t ;
typedef int boolean ;


 int STlib_drawNum (TYPE_1__*,int ) ;

void
STlib_updateNum
( st_number_t* n,
  boolean refresh )
{
    if (*n->on) STlib_drawNum(n, refresh);
}
