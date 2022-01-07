
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mobj_t ;
struct TYPE_6__ {TYPE_1__* frontsector; } ;
typedef TYPE_2__ line_t ;
typedef int bwhere_e ;
struct TYPE_7__ {int btimer; int btexture; int * soundorg; int where; TYPE_2__* line; } ;
struct TYPE_5__ {int soundorg; } ;


 int I_Error (char*) ;
 int MAXBUTTONS ;
 TYPE_3__* buttonlist ;

void
P_StartButton
( line_t* line,
  bwhere_e w,
  int texture,
  int time )
{
    int i;


    for (i = 0;i < MAXBUTTONS;i++)
    {
 if (buttonlist[i].btimer
     && buttonlist[i].line == line)
 {

     return;
 }
    }



    for (i = 0;i < MAXBUTTONS;i++)
    {
 if (!buttonlist[i].btimer)
 {
     buttonlist[i].line = line;
     buttonlist[i].where = w;
     buttonlist[i].btexture = texture;
     buttonlist[i].btimer = time;
     buttonlist[i].soundorg = (mobj_t *)&line->frontsector->soundorg;
     return;
 }
    }

    I_Error("P_StartButton: no button slots left!");
}
