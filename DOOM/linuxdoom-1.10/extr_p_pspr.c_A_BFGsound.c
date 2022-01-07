
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pspdef_t ;
struct TYPE_3__ {int mo; } ;
typedef TYPE_1__ player_t ;


 int S_StartSound (int ,int ) ;
 int sfx_bfg ;

void
A_BFGsound
( player_t* player,
  pspdef_t* psp )
{
    S_StartSound (player->mo, sfx_bfg);
}
