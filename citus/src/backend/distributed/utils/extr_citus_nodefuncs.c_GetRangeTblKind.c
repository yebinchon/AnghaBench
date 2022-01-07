
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rtekind; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef int CitusRTEKind ;


 int CITUS_RTE_RELATION ;
 int ExtractRangeTblExtraData (TYPE_1__*,int *,int *,int *,int *) ;
CitusRTEKind
GetRangeTblKind(RangeTblEntry *rte)
{
 CitusRTEKind rteKind = CITUS_RTE_RELATION ;

 switch (rte->rtekind)
 {

  case 129:
  case 133:
  case 132:
  case 130:
  case 134:
  case 128:
  case 136:



   {
    rteKind = (CitusRTEKind) rte->rtekind;
    break;
   }

  case 135:
  {





   ExtractRangeTblExtraData(rte, &rteKind, ((void*)0), ((void*)0), ((void*)0));
   break;
  }
 }

 return rteKind;
}
