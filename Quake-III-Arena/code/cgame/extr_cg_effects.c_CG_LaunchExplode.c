
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_7__ {int hModel; int axis; int origin; } ;
typedef TYPE_2__ refEntity_t ;
typedef int qhandle_t ;
struct TYPE_6__ {scalar_t__ trTime; int trDelta; int trBase; int trType; } ;
struct TYPE_8__ {float bounceFactor; int leMarkType; int leBounceSoundType; TYPE_1__ pos; scalar_t__ startTime; scalar_t__ endTime; int leType; TYPE_2__ refEntity; } ;
typedef TYPE_3__ localEntity_t ;
struct TYPE_9__ {scalar_t__ time; } ;


 int AxisCopy (int ,int ) ;
 TYPE_3__* CG_AllocLocalEntity () ;
 int LEBS_BRASS ;
 int LEMT_NONE ;
 int LE_FRAGMENT ;
 int TR_GRAVITY ;
 int VectorCopy (int ,int ) ;
 int axisDefault ;
 TYPE_4__ cg ;
 int random () ;

void CG_LaunchExplode( vec3_t origin, vec3_t velocity, qhandle_t hModel ) {
 localEntity_t *le;
 refEntity_t *re;

 le = CG_AllocLocalEntity();
 re = &le->refEntity;

 le->leType = LE_FRAGMENT;
 le->startTime = cg.time;
 le->endTime = le->startTime + 10000 + random() * 6000;

 VectorCopy( origin, re->origin );
 AxisCopy( axisDefault, re->axis );
 re->hModel = hModel;

 le->pos.trType = TR_GRAVITY;
 VectorCopy( origin, le->pos.trBase );
 VectorCopy( velocity, le->pos.trDelta );
 le->pos.trTime = cg.time;

 le->bounceFactor = 0.1f;

 le->leBounceSoundType = LEBS_BRASS;
 le->leMarkType = LEMT_NONE;
}
