
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int mobj_t ;
struct TYPE_11__ {int special; size_t* sidenum; } ;
typedef TYPE_2__ line_t ;
typedef int button_t ;
struct TYPE_12__ {int basepic; int numpics; int speed; scalar_t__ istexture; } ;
typedef TYPE_3__ anim_t ;
struct TYPE_14__ {int where; int soundorg; int btexture; TYPE_1__* line; scalar_t__ btimer; } ;
struct TYPE_13__ {int bottomtexture; int midtexture; int toptexture; int textureoffset; } ;
struct TYPE_10__ {size_t* sidenum; } ;


 int FRACUNIT ;
 int G_ExitLevel () ;
 int MAXBUTTONS ;
 int S_StartSound (int *,int ) ;
 TYPE_3__* anims ;

 TYPE_5__* buttonlist ;
 int* flattranslation ;
 TYPE_3__* lastanim ;
 int levelTimeCount ;
 int levelTimer ;
 int leveltime ;
 TYPE_2__** linespeciallist ;
 int memset (TYPE_5__*,int ,int) ;

 int numlinespecials ;
 int sfx_swtchn ;
 TYPE_4__* sides ;
 int* texturetranslation ;


void P_UpdateSpecials (void)
{
    anim_t* anim;
    int pic;
    int i;
    line_t* line;



    if (levelTimer == 1)
    {
 levelTimeCount--;
 if (!levelTimeCount)
     G_ExitLevel();
    }


    for (anim = anims ; anim < lastanim ; anim++)
    {
 for (i=anim->basepic ; i<anim->basepic+anim->numpics ; i++)
 {
     pic = anim->basepic + ( (leveltime/anim->speed + i)%anim->numpics );
     if (anim->istexture)
  texturetranslation[i] = pic;
     else
  flattranslation[i] = pic;
 }
    }



    for (i = 0; i < numlinespecials; i++)
    {
 line = linespeciallist[i];
 switch(line->special)
 {
   case 48:

     sides[line->sidenum[0]].textureoffset += FRACUNIT;
     break;
 }
    }



    for (i = 0; i < MAXBUTTONS; i++)
 if (buttonlist[i].btimer)
 {
     buttonlist[i].btimer--;
     if (!buttonlist[i].btimer)
     {
  switch(buttonlist[i].where)
  {
    case 128:
      sides[buttonlist[i].line->sidenum[0]].toptexture =
   buttonlist[i].btexture;
      break;

    case 129:
      sides[buttonlist[i].line->sidenum[0]].midtexture =
   buttonlist[i].btexture;
      break;

    case 130:
      sides[buttonlist[i].line->sidenum[0]].bottomtexture =
   buttonlist[i].btexture;
      break;
  }
  S_StartSound((mobj_t *)&buttonlist[i].soundorg,sfx_swtchn);
  memset(&buttonlist[i],0,sizeof(button_t));
     }
 }

}
