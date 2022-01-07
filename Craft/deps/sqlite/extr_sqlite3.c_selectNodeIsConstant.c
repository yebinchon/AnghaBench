
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ Walker ;
typedef int Select ;


 int UNUSED_PARAMETER (int *) ;
 int WRC_Abort ;

__attribute__((used)) static int selectNodeIsConstant(Walker *pWalker, Select *NotUsed){
  UNUSED_PARAMETER(NotUsed);
  pWalker->u.i = 0;
  return WRC_Abort;
}
