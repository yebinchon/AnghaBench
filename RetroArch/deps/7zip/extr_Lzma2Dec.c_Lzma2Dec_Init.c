
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int needInitDic; int needInitState; int needInitProp; int decoder; int state; } ;
typedef TYPE_1__ CLzma2Dec ;


 int LZMA2_STATE_CONTROL ;
 int LzmaDec_Init (int *) ;

void Lzma2Dec_Init(CLzma2Dec *p)
{
   p->state = LZMA2_STATE_CONTROL;
   p->needInitDic = 1;
   p->needInitState = 1;
   p->needInitProp = 1;
   LzmaDec_Init(&p->decoder);
}
