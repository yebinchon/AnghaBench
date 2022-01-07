
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nexttic; int type; int ctr; int nanims; scalar_t__ period; scalar_t__ data2; scalar_t__ data1; } ;
typedef TYPE_1__ anim_t ;
struct TYPE_5__ {int epsd; scalar_t__ next; } ;





 scalar_t__ M_Random () ;
 int* NUMANIMS ;
 int StatCount ;
 TYPE_1__** anims ;
 scalar_t__ bcnt ;
 scalar_t__ commercial ;
 scalar_t__ gamemode ;
 int state ;
 TYPE_2__* wbs ;

void WI_updateAnimatedBack(void)
{
    int i;
    anim_t* a;

    if (gamemode == commercial)
 return;

    if (wbs->epsd > 2)
 return;

    for (i=0;i<NUMANIMS[wbs->epsd];i++)
    {
 a = &anims[wbs->epsd][i];

 if (bcnt == a->nexttic)
 {
     switch (a->type)
     {
       case 130:
  if (++a->ctr >= a->nanims) a->ctr = 0;
  a->nexttic = bcnt + a->period;
  break;

       case 128:
  a->ctr++;
  if (a->ctr == a->nanims)
  {
      a->ctr = -1;
      a->nexttic = bcnt+a->data2+(M_Random()%a->data1);
  }
  else a->nexttic = bcnt + a->period;
  break;

       case 129:

  if (!(state == StatCount && i == 7)
      && wbs->next == a->data1)
  {
      a->ctr++;
      if (a->ctr == a->nanims) a->ctr--;
      a->nexttic = bcnt + a->period;
  }
  break;
     }
 }

    }

}
