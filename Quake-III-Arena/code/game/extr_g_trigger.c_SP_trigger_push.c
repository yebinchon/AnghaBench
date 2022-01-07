
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int eType; } ;
struct TYPE_8__ {int svFlags; } ;
struct TYPE_10__ {scalar_t__ nextthink; int think; int touch; TYPE_2__ s; TYPE_1__ r; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_11__ {scalar_t__ time; } ;


 int AimAtTarget ;
 int ET_PUSH_TRIGGER ;
 scalar_t__ FRAMETIME ;
 int G_SoundIndex (char*) ;
 int InitTrigger (TYPE_3__*) ;
 int SVF_NOCLIENT ;
 TYPE_5__ level ;
 int trap_LinkEntity (TYPE_3__*) ;
 int trigger_push_touch ;

void SP_trigger_push( gentity_t *self ) {
 InitTrigger (self);


 self->r.svFlags &= ~SVF_NOCLIENT;


 G_SoundIndex("sound/world/jumppad.wav");

 self->s.eType = ET_PUSH_TRIGGER;
 self->touch = trigger_push_touch;
 self->think = AimAtTarget;
 self->nextthink = level.time + FRAMETIME;
 trap_LinkEntity (self);
}
