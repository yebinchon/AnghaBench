
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pspdef_t ;
struct TYPE_4__ {int mo; } ;
typedef TYPE_1__ player_t ;


 int A_ReFire (TYPE_1__*,int *) ;
 int S_StartSound (int ,int ) ;
 int sfx_dbcls ;

void
A_CloseShotgun2
( player_t* player,
  pspdef_t* psp )
{
    S_StartSound (player->mo, sfx_dbcls);
    A_ReFire(player,psp);
}
