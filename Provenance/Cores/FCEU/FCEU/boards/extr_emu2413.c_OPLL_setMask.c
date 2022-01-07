
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int mask; } ;
typedef TYPE_1__ OPLL ;



uint32 OPLL_setMask(OPLL * opll, uint32 mask) {
 uint32 ret;

 if (opll) {
  ret = opll->mask;
  opll->mask = mask;
  return ret;
 } else
  return 0;
}
