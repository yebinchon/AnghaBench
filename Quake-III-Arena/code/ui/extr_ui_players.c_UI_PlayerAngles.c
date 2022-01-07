
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_7__ {float yawAngle; float pitchAngle; void* pitching; void* yawing; } ;
struct TYPE_6__ {float yawAngle; void* yawing; } ;
struct TYPE_8__ {int legsAnim; int torsoAnim; TYPE_2__ torso; TYPE_1__ legs; int viewAngles; } ;
typedef TYPE_3__ playerInfo_t ;


 int ANIM_TOGGLEBIT ;
 float AngleMod (float) ;
 int AnglesSubtract (float*,float*,float*) ;
 int AnglesToAxis (float*,float**) ;
 int LEGS_IDLE ;
 size_t PITCH ;
 float SWINGSPEED ;
 int TORSO_STAND ;
 float UI_MovedirAdjustment (TYPE_3__*) ;
 int UI_SwingAngles (float,int,int,float,float*,void**) ;
 int VectorClear (float*) ;
 int VectorCopy (int ,float*) ;
 size_t YAW ;
 void* qtrue ;

__attribute__((used)) static void UI_PlayerAngles( playerInfo_t *pi, vec3_t legs[3], vec3_t torso[3], vec3_t head[3] ) {
 vec3_t legsAngles, torsoAngles, headAngles;
 float dest;
 float adjust;

 VectorCopy( pi->viewAngles, headAngles );
 headAngles[YAW] = AngleMod( headAngles[YAW] );
 VectorClear( legsAngles );
 VectorClear( torsoAngles );




 if ( ( pi->legsAnim & ~ANIM_TOGGLEBIT ) != LEGS_IDLE
  || ( pi->torsoAnim & ~ANIM_TOGGLEBIT ) != TORSO_STAND ) {

  pi->torso.yawing = qtrue;
  pi->torso.pitching = qtrue;
  pi->legs.yawing = qtrue;
 }


 adjust = UI_MovedirAdjustment( pi );
 legsAngles[YAW] = headAngles[YAW] + adjust;
 torsoAngles[YAW] = headAngles[YAW] + 0.25 * adjust;



 UI_SwingAngles( torsoAngles[YAW], 25, 90, SWINGSPEED, &pi->torso.yawAngle, &pi->torso.yawing );
 UI_SwingAngles( legsAngles[YAW], 40, 90, SWINGSPEED, &pi->legs.yawAngle, &pi->legs.yawing );

 torsoAngles[YAW] = pi->torso.yawAngle;
 legsAngles[YAW] = pi->legs.yawAngle;




 if ( headAngles[PITCH] > 180 ) {
  dest = (-360 + headAngles[PITCH]) * 0.75;
 } else {
  dest = headAngles[PITCH] * 0.75;
 }
 UI_SwingAngles( dest, 15, 30, 0.1f, &pi->torso.pitchAngle, &pi->torso.pitching );
 torsoAngles[PITCH] = pi->torso.pitchAngle;


 AnglesSubtract( headAngles, torsoAngles, headAngles );
 AnglesSubtract( torsoAngles, legsAngles, torsoAngles );
 AnglesToAxis( legsAngles, legs );
 AnglesToAxis( torsoAngles, torso );
 AnglesToAxis( headAngles, head );
}
