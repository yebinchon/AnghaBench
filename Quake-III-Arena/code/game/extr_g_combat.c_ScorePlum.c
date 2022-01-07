
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_7__ {int time; int number; int otherEntityNum; } ;
struct TYPE_6__ {int singleClient; int svFlags; } ;
struct TYPE_8__ {TYPE_2__ s; TYPE_1__ r; } ;
typedef TYPE_3__ gentity_t ;


 int EV_SCOREPLUM ;
 TYPE_3__* G_TempEntity (int ,int ) ;
 int SVF_SINGLECLIENT ;

void ScorePlum( gentity_t *ent, vec3_t origin, int score ) {
 gentity_t *plum;

 plum = G_TempEntity( origin, EV_SCOREPLUM );

 plum->r.svFlags |= SVF_SINGLECLIENT;
 plum->r.singleClient = ent->s.number;

 plum->s.otherEntityNum = ent->s.number;
 plum->s.time = score;
}
