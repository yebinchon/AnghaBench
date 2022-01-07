
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Walker ;
typedef int Select ;


 int UNUSED_PARAMETER (int *) ;
 int WRC_Continue ;

__attribute__((used)) static int analyzeAggregatesInSelect(Walker *pWalker, Select *pSelect){
  UNUSED_PARAMETER(pWalker);
  UNUSED_PARAMETER(pSelect);
  return WRC_Continue;
}
