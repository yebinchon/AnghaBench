
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int retval; } ;
typedef TYPE_1__ UI_tMenuItem ;



__attribute__((used)) static UI_tMenuItem *FindMenuItem(UI_tMenuItem *mip, int option)
{
 while (mip->retval != option)
  mip++;
 return mip;
}
