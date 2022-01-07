
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int* vec3_t ;
typedef int qboolean ;
struct TYPE_3__ {int origin; } ;
typedef TYPE_1__ bot_state_t ;


 int CONTENTS_LAVA ;
 int CONTENTS_SLIME ;
 int VectorCopy (int ,int*) ;
 int trap_AAS_PointContents (int*) ;

qboolean BotInLavaOrSlime(bot_state_t *bs) {
 vec3_t feet;

 VectorCopy(bs->origin, feet);
 feet[2] -= 23;
 return (trap_AAS_PointContents(feet) & (CONTENTS_LAVA|CONTENTS_SLIME));
}
