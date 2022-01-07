
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int eventParm; } ;
struct TYPE_6__ {int currentOrigin; } ;
struct TYPE_8__ {TYPE_2__ s; TYPE_1__ r; } ;
typedef TYPE_3__ gentity_t ;


 int EV_GENERAL_SOUND ;
 TYPE_3__* G_TempEntity (int ,int ) ;

void G_Sound( gentity_t *ent, int channel, int soundIndex ) {
 gentity_t *te;

 te = G_TempEntity( ent->r.currentOrigin, EV_GENERAL_SOUND );
 te->s.eventParm = soundIndex;
}
