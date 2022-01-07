
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_17__ {scalar_t__ snapshotCounter; int numClusters; int* clusternums; int lastCluster; int areanum2; int areanum; } ;
typedef TYPE_4__ svEntity_t ;
typedef int snapshotEntityNumbers_t ;
struct TYPE_16__ {int number; int generic1; int origin2; int origin; } ;
struct TYPE_15__ {int svFlags; int singleClient; int linked; } ;
struct TYPE_18__ {TYPE_3__ s; TYPE_2__ r; } ;
typedef TYPE_5__ sharedEntity_t ;
typedef int qboolean ;
struct TYPE_14__ {int clientNum; } ;
struct TYPE_19__ {TYPE_1__ ps; int areabits; int areabytes; } ;
typedef TYPE_6__ clientSnapshot_t ;
typedef int byte ;
struct TYPE_20__ {int num_entities; scalar_t__ snapshotCounter; int state; } ;


 int CM_AreasConnected (int,int ) ;
 int* CM_ClusterPVS (int) ;
 int CM_LeafArea (int) ;
 int CM_LeafCluster (int) ;
 int CM_PointLeafnum (int ) ;
 int CM_WriteAreaBits (int ,int) ;
 int Com_DPrintf (char*) ;
 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 int SVF_BROADCAST ;
 int SVF_CLIENTMASK ;
 int SVF_NOCLIENT ;
 int SVF_NOTSINGLECLIENT ;
 int SVF_PORTAL ;
 int SVF_SINGLECLIENT ;
 int SV_AddEntToSnapshot (TYPE_4__*,TYPE_5__*,int *) ;
 TYPE_5__* SV_GentityNum (int) ;
 TYPE_4__* SV_SvEntityForGentity (TYPE_5__*) ;
 float VectorLengthSquared (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int qtrue ;
 TYPE_7__ sv ;

__attribute__((used)) static void SV_AddEntitiesVisibleFromPoint( vec3_t origin, clientSnapshot_t *frame,
         snapshotEntityNumbers_t *eNums, qboolean portal ) {
 int e, i;
 sharedEntity_t *ent;
 svEntity_t *svEnt;
 int l;
 int clientarea, clientcluster;
 int leafnum;
 int c_fullsend;
 byte *clientpvs;
 byte *bitvector;




 if ( !sv.state ) {
  return;
 }

 leafnum = CM_PointLeafnum (origin);
 clientarea = CM_LeafArea (leafnum);
 clientcluster = CM_LeafCluster (leafnum);


 frame->areabytes = CM_WriteAreaBits( frame->areabits, clientarea );

 clientpvs = CM_ClusterPVS (clientcluster);

 c_fullsend = 0;

 for ( e = 0 ; e < sv.num_entities ; e++ ) {
  ent = SV_GentityNum(e);


  if ( !ent->r.linked ) {
   continue;
  }

  if (ent->s.number != e) {
   Com_DPrintf ("FIXING ENT->S.NUMBER!!!\n");
   ent->s.number = e;
  }


  if ( ent->r.svFlags & SVF_NOCLIENT ) {
   continue;
  }


  if ( ent->r.svFlags & SVF_SINGLECLIENT ) {
   if ( ent->r.singleClient != frame->ps.clientNum ) {
    continue;
   }
  }

  if ( ent->r.svFlags & SVF_NOTSINGLECLIENT ) {
   if ( ent->r.singleClient == frame->ps.clientNum ) {
    continue;
   }
  }

  if ( ent->r.svFlags & SVF_CLIENTMASK ) {
   if (frame->ps.clientNum >= 32)
    Com_Error( ERR_DROP, "SVF_CLIENTMASK: cientNum > 32\n" );
   if (~ent->r.singleClient & (1 << frame->ps.clientNum))
    continue;
  }

  svEnt = SV_SvEntityForGentity( ent );


  if ( svEnt->snapshotCounter == sv.snapshotCounter ) {
   continue;
  }


  if ( ent->r.svFlags & SVF_BROADCAST ) {
   SV_AddEntToSnapshot( svEnt, ent, eNums );
   continue;
  }



  if ( !CM_AreasConnected( clientarea, svEnt->areanum ) ) {


   if ( !CM_AreasConnected( clientarea, svEnt->areanum2 ) ) {
    continue;
   }
  }

  bitvector = clientpvs;


  if ( !svEnt->numClusters ) {
   continue;
  }
  l = 0;
  for ( i=0 ; i < svEnt->numClusters ; i++ ) {
   l = svEnt->clusternums[i];
   if ( bitvector[l >> 3] & (1 << (l&7) ) ) {
    break;
   }
  }



  if ( i == svEnt->numClusters ) {
   if ( svEnt->lastCluster ) {
    for ( ; l <= svEnt->lastCluster ; l++ ) {
     if ( bitvector[l >> 3] & (1 << (l&7) ) ) {
      break;
     }
    }
    if ( l == svEnt->lastCluster ) {
     continue;
    }
   } else {
    continue;
   }
  }


  SV_AddEntToSnapshot( svEnt, ent, eNums );


  if ( ent->r.svFlags & SVF_PORTAL ) {
   if ( ent->s.generic1 ) {
    vec3_t dir;
    VectorSubtract(ent->s.origin, origin, dir);
    if ( VectorLengthSquared(dir) > (float) ent->s.generic1 * ent->s.generic1 ) {
     continue;
    }
   }
   SV_AddEntitiesVisibleFromPoint( ent->s.origin2, frame, eNums, qtrue );
  }

 }
}
