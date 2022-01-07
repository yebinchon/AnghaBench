
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
struct aas_clientmove_s {int dummy; } ;


 int AAS_ClientMovementPrediction (struct aas_clientmove_s*,int,int ,int,int,int ,int ,int,int,float,int ,int ,int ,int ,int) ;
 int SE_HITBOUNDINGBOX ;

int AAS_ClientMovementHitBBox(struct aas_clientmove_s *move,
        int entnum, vec3_t origin,
        int presencetype, int onground,
        vec3_t velocity, vec3_t cmdmove,
        int cmdframes,
        int maxframes, float frametime,
        vec3_t mins, vec3_t maxs, int visualize)
{
 return AAS_ClientMovementPrediction(move, entnum, origin, presencetype, onground,
          velocity, cmdmove, cmdframes, maxframes,
          frametime, SE_HITBOUNDINGBOX, 0,
          mins, maxs, visualize);
}
