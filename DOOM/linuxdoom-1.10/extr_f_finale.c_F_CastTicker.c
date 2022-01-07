
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t type; int * name; } ;
struct TYPE_6__ {int seesound; size_t seestate; size_t meleestate; size_t missilestate; } ;
struct TYPE_5__ {int tics; size_t nextstate; } ;
 size_t S_NULL ;
 int S_StartSound (int *,int) ;


 int castattacking ;
 int castdeath ;
 int castframes ;
 size_t castnum ;
 int castonmelee ;
 TYPE_4__* castorder ;
 TYPE_1__* caststate ;
 scalar_t__ casttics ;
 TYPE_2__* mobjinfo ;
 int sfx_claw ;
 int sfx_dshtgn ;
 int sfx_firsht ;
 int sfx_pistol ;
 int sfx_plasma ;
 int sfx_rlaunc ;
 int sfx_sgtatk ;
 int sfx_shotgn ;
 int sfx_skeatk ;
 int sfx_skepch ;
 int sfx_skeswg ;
 int sfx_sklatk ;
 int sfx_vilatk ;
 TYPE_1__* states ;

void F_CastTicker (void)
{
    int st;
    int sfx;

    if (--casttics > 0)
 return;

    if (caststate->tics == -1 || caststate->nextstate == S_NULL)
    {

 castnum++;
 castdeath = 0;
 if (castorder[castnum].name == ((void*)0))
     castnum = 0;
 if (mobjinfo[castorder[castnum].type].seesound)
     S_StartSound (((void*)0), mobjinfo[castorder[castnum].type].seesound);
 caststate = &states[mobjinfo[castorder[castnum].type].seestate];
 castframes = 0;
    }
    else
    {

 if (caststate == &states[139])
     goto stopattack;
 st = caststate->nextstate;
 caststate = &states[st];
 castframes++;


 switch (st)
 {
   case 139: sfx = sfx_dshtgn; break;
   case 138: sfx = sfx_pistol; break;
   case 130: sfx = sfx_shotgn; break;
   case 128: sfx = sfx_vilatk; break;
   case 136: sfx = sfx_skeswg; break;
   case 135: sfx = sfx_skepch; break;
   case 134: sfx = sfx_skeatk; break;
   case 142:
   case 143:
   case 144: sfx = sfx_firsht; break;
   case 150:
   case 149:
   case 148: sfx = sfx_shotgn; break;
   case 129: sfx = sfx_claw; break;
   case 137: sfx = sfx_sgtatk; break;
   case 152:
   case 153:
   case 141: sfx = sfx_firsht; break;
   case 133: sfx = sfx_sklatk; break;
   case 132:
   case 131: sfx = sfx_shotgn; break;
   case 151: sfx = sfx_plasma; break;
   case 147:
   case 146:
   case 145: sfx = sfx_rlaunc; break;
   case 140: sfx = sfx_sklatk; break;
   default: sfx = 0; break;
 }

 if (sfx)
     S_StartSound (((void*)0), sfx);
    }

    if (castframes == 12)
    {

 castattacking = 1;
 if (castonmelee)
     caststate=&states[mobjinfo[castorder[castnum].type].meleestate];
 else
     caststate=&states[mobjinfo[castorder[castnum].type].missilestate];
 castonmelee ^= 1;
 if (caststate == &states[S_NULL])
 {
     if (castonmelee)
  caststate=
      &states[mobjinfo[castorder[castnum].type].meleestate];
     else
  caststate=
      &states[mobjinfo[castorder[castnum].type].missilestate];
 }
    }

    if (castattacking)
    {
 if (castframes == 24
     || caststate == &states[mobjinfo[castorder[castnum].type].seestate] )
 {
   stopattack:
     castattacking = 0;
     castframes = 0;
     caststate = &states[mobjinfo[castorder[castnum].type].seestate];
 }
    }

    casttics = caststate->tics;
    if (casttics == -1)
 casttics = 15;
}
