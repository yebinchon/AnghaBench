
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_5__ {int frame; int axis; int origin; int hModel; scalar_t__ oldframe; int backlerp; } ;
struct TYPE_4__ {int * viewaxis; int vieworg; } ;
struct TYPE_6__ {int testGun; TYPE_2__ testModelEntity; scalar_t__* refdefViewAngles; TYPE_1__ refdef; int testModelName; } ;


 int AnglesToAxis (scalar_t__*,int ) ;
 int CG_Argv (int) ;
 int CG_Printf (char*) ;
 int MAX_QPATH ;
 size_t PITCH ;
 int Q_strncpyz (int ,int ,int ) ;
 size_t ROLL ;
 int VectorMA (int ,int,int ,int ) ;
 size_t YAW ;
 int atof (int ) ;
 TYPE_3__ cg ;
 int memset (TYPE_2__*,int ,int) ;
 int qfalse ;
 int trap_Argc () ;
 int trap_R_RegisterModel (int ) ;

void CG_TestModel_f (void) {
 vec3_t angles;

 memset( &cg.testModelEntity, 0, sizeof(cg.testModelEntity) );
 if ( trap_Argc() < 2 ) {
  return;
 }

 Q_strncpyz (cg.testModelName, CG_Argv( 1 ), MAX_QPATH );
 cg.testModelEntity.hModel = trap_R_RegisterModel( cg.testModelName );

 if ( trap_Argc() == 3 ) {
  cg.testModelEntity.backlerp = atof( CG_Argv( 2 ) );
  cg.testModelEntity.frame = 1;
  cg.testModelEntity.oldframe = 0;
 }
 if (! cg.testModelEntity.hModel ) {
  CG_Printf( "Can't register model\n" );
  return;
 }

 VectorMA( cg.refdef.vieworg, 100, cg.refdef.viewaxis[0], cg.testModelEntity.origin );

 angles[PITCH] = 0;
 angles[YAW] = 180 + cg.refdefViewAngles[1];
 angles[ROLL] = 0;

 AnglesToAxis( angles, cg.testModelEntity.axis );
 cg.testGun = qfalse;
}
