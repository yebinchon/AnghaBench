
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_7__ {int pureAuthentic; int nextSnapshotTime; int state; void* gotCP; int name; } ;
typedef TYPE_1__ client_t ;
struct TYPE_9__ {int checksumFeedServerId; int checksumFeed; } ;
struct TYPE_8__ {scalar_t__ integer; } ;


 int CS_ACTIVE ;
 int Cmd_Argc () ;
 char const* Cmd_Argv (int) ;
 int Cmd_TokenizeString (char const*) ;
 int Com_DPrintf (char*,int ) ;
 int FS_FileIsInPAK (char*,int*) ;
 char* FS_LoadedPakPureChecksums () ;
 int SV_DropClient (TYPE_1__*,char*) ;
 int SV_SendClientSnapshot (TYPE_1__*) ;
 int atoi (char const*) ;
 int qfalse ;
 void* qtrue ;
 TYPE_3__ sv ;
 TYPE_2__* sv_pure ;

__attribute__((used)) static void SV_VerifyPaks_f( client_t *cl ) {
 int nChkSum1, nChkSum2, nClientPaks, nServerPaks, i, j, nCurArg;
 int nClientChkSum[1024];
 int nServerChkSum[1024];
 const char *pPaks, *pArg;
 qboolean bGood = qtrue;





 if ( sv_pure->integer != 0 ) {

  bGood = qtrue;
  nChkSum1 = nChkSum2 = 0;

  bGood = (FS_FileIsInPAK("vm/cgame.qvm", &nChkSum1) == 1);
  if (bGood)
   bGood = (FS_FileIsInPAK("vm/ui.qvm", &nChkSum2) == 1);

  nClientPaks = Cmd_Argc();


  nCurArg = 1;

  pArg = Cmd_Argv(nCurArg++);
  if(!pArg) {
   bGood = qfalse;
  }
  else
  {



   if (atoi(pArg) < sv.checksumFeedServerId)
   {
    Com_DPrintf("ignoring outdated cp command from client %s\n", cl->name);
    return;
   }
  }


  while (bGood) {



   if (nClientPaks < 6) {
    bGood = qfalse;
    break;
   }

   pArg = Cmd_Argv(nCurArg++);
   if (!pArg || *pArg == '@' || atoi(pArg) != nChkSum1 ) {
    bGood = qfalse;
    break;
   }

   pArg = Cmd_Argv(nCurArg++);
   if (!pArg || *pArg == '@' || atoi(pArg) != nChkSum2 ) {
    bGood = qfalse;
    break;
   }

   pArg = Cmd_Argv(nCurArg++);
   if (*pArg != '@') {
    bGood = qfalse;
    break;
   }

   for (i = 0; nCurArg < nClientPaks; i++) {
    nClientChkSum[i] = atoi(Cmd_Argv(nCurArg++));
   }


   nClientPaks = i - 1;



   for (i = 0; i < nClientPaks; i++) {
    for (j = 0; j < nClientPaks; j++) {
     if (i == j)
      continue;
     if (nClientChkSum[i] == nClientChkSum[j]) {
      bGood = qfalse;
      break;
     }
    }
    if (bGood == qfalse)
     break;
   }
   if (bGood == qfalse)
    break;


   pPaks = FS_LoadedPakPureChecksums();
   Cmd_TokenizeString( pPaks );
   nServerPaks = Cmd_Argc();
   if (nServerPaks > 1024)
    nServerPaks = 1024;

   for (i = 0; i < nServerPaks; i++) {
    nServerChkSum[i] = atoi(Cmd_Argv(i));
   }


   for (i = 0; i < nClientPaks; i++) {
    for (j = 0; j < nServerPaks; j++) {
     if (nClientChkSum[i] == nServerChkSum[j]) {
      break;
     }
    }
    if (j >= nServerPaks) {
     bGood = qfalse;
     break;
    }
   }
   if ( bGood == qfalse ) {
    break;
   }


   nChkSum1 = sv.checksumFeed;
   for (i = 0; i < nClientPaks; i++) {
    nChkSum1 ^= nClientChkSum[i];
   }
   nChkSum1 ^= nClientPaks;
   if (nChkSum1 != nClientChkSum[nClientPaks]) {
    bGood = qfalse;
    break;
   }


   break;
  }

  cl->gotCP = qtrue;

  if (bGood) {
   cl->pureAuthentic = 1;
  }
  else {
   cl->pureAuthentic = 0;
   cl->nextSnapshotTime = -1;
   cl->state = CS_ACTIVE;
   SV_SendClientSnapshot( cl );
   SV_DropClient( cl, "Unpure client detected. Invalid .PK3 files referenced!" );
  }
 }
}
