
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int numScores; TYPE_2__* scores; void** teamScores; } ;
struct TYPE_7__ {TYPE_1__* clientinfo; } ;
struct TYPE_6__ {int client; int team; void* score; void* captures; void* perfect; void* assistCount; void* defendCount; void* guantletCount; void* excellentCount; void* impressiveCount; void* accuracy; void* scoreFlags; void* time; void* ping; } ;
struct TYPE_5__ {int powerups; int team; void* score; } ;


 int CG_Argv (int) ;
 int CG_SetScoreSelection (int *) ;
 int MAX_CLIENTS ;
 void* atoi (int ) ;
 TYPE_4__ cg ;
 TYPE_3__ cgs ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void CG_ParseScores( void ) {
 int i, powerups;

 cg.numScores = atoi( CG_Argv( 1 ) );
 if ( cg.numScores > MAX_CLIENTS ) {
  cg.numScores = MAX_CLIENTS;
 }

 cg.teamScores[0] = atoi( CG_Argv( 2 ) );
 cg.teamScores[1] = atoi( CG_Argv( 3 ) );

 memset( cg.scores, 0, sizeof( cg.scores ) );
 for ( i = 0 ; i < cg.numScores ; i++ ) {

  cg.scores[i].client = atoi( CG_Argv( i * 14 + 4 ) );
  cg.scores[i].score = atoi( CG_Argv( i * 14 + 5 ) );
  cg.scores[i].ping = atoi( CG_Argv( i * 14 + 6 ) );
  cg.scores[i].time = atoi( CG_Argv( i * 14 + 7 ) );
  cg.scores[i].scoreFlags = atoi( CG_Argv( i * 14 + 8 ) );
  powerups = atoi( CG_Argv( i * 14 + 9 ) );
  cg.scores[i].accuracy = atoi(CG_Argv(i * 14 + 10));
  cg.scores[i].impressiveCount = atoi(CG_Argv(i * 14 + 11));
  cg.scores[i].excellentCount = atoi(CG_Argv(i * 14 + 12));
  cg.scores[i].guantletCount = atoi(CG_Argv(i * 14 + 13));
  cg.scores[i].defendCount = atoi(CG_Argv(i * 14 + 14));
  cg.scores[i].assistCount = atoi(CG_Argv(i * 14 + 15));
  cg.scores[i].perfect = atoi(CG_Argv(i * 14 + 16));
  cg.scores[i].captures = atoi(CG_Argv(i * 14 + 17));

  if ( cg.scores[i].client < 0 || cg.scores[i].client >= MAX_CLIENTS ) {
   cg.scores[i].client = 0;
  }
  cgs.clientinfo[ cg.scores[i].client ].score = cg.scores[i].score;
  cgs.clientinfo[ cg.scores[i].client ].powerups = powerups;

  cg.scores[i].team = cgs.clientinfo[cg.scores[i].client].team;
 }




}
