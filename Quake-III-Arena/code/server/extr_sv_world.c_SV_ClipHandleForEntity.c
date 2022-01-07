
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int svFlags; int maxs; int mins; scalar_t__ bmodel; } ;
struct TYPE_5__ {int modelindex; } ;
struct TYPE_7__ {TYPE_2__ r; TYPE_1__ s; } ;
typedef TYPE_3__ sharedEntity_t ;
typedef int clipHandle_t ;


 int CM_InlineModel (int ) ;
 int CM_TempBoxModel (int ,int ,int ) ;
 int SVF_CAPSULE ;
 int qfalse ;
 int qtrue ;

clipHandle_t SV_ClipHandleForEntity( const sharedEntity_t *ent ) {
 if ( ent->r.bmodel ) {

  return CM_InlineModel( ent->s.modelindex );
 }
 if ( ent->r.svFlags & SVF_CAPSULE ) {

  return CM_TempBoxModel( ent->r.mins, ent->r.maxs, qtrue );
 }


 return CM_TempBoxModel( ent->r.mins, ent->r.maxs, qfalse );
}
