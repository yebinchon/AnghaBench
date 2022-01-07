
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int matchFinderMt; scalar_t__ mtMode; } ;
typedef scalar_t__ CLzmaEncHandle ;
typedef TYPE_1__ CLzmaEnc ;


 int MatchFinderMt_ReleaseStream (int *) ;

void LzmaEnc_Finish(CLzmaEncHandle pp)
{

   CLzmaEnc *p = (CLzmaEnc *)pp;
   if (p->mtMode)
      MatchFinderMt_ReleaseStream(&p->matchFinderMt);

}
