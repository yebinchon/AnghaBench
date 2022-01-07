
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_10__ {TYPE_1__* client; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {int* teamScores; scalar_t__ warmupTime; } ;
struct TYPE_9__ {int* persistant; } ;
struct TYPE_8__ {TYPE_2__ ps; } ;


 int CalculateRanks () ;
 scalar_t__ GT_TEAM ;
 size_t PERS_SCORE ;
 size_t PERS_TEAM ;
 int ScorePlum (TYPE_3__*,int ,int) ;
 TYPE_5__ g_gametype ;
 TYPE_4__ level ;

void AddScore( gentity_t *ent, vec3_t origin, int score ) {
 if ( !ent->client ) {
  return;
 }

 if ( level.warmupTime ) {
  return;
 }

 ScorePlum(ent, origin, score);

 ent->client->ps.persistant[PERS_SCORE] += score;
 if ( g_gametype.integer == GT_TEAM )
  level.teamScores[ ent->client->ps.persistant[PERS_TEAM] ] += score;
 CalculateRanks();
}
