
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numclusters; int portalindexsize; int numportals; int numnodes; int reachabilitysize; int numareasettings; int numareas; int faceindexsize; int numfaces; int edgeindexsize; int numedges; int numplanes; int numvertexes; } ;


 int AAS_ShowNumReachabilities (int ,char*) ;
 int Log_Print (char*,int ) ;
 int TRAVEL_BARRIERJUMP ;
 int TRAVEL_BFGJUMP ;
 int TRAVEL_CROUCH ;
 int TRAVEL_DOUBLEJUMP ;
 int TRAVEL_ELEVATOR ;
 int TRAVEL_FUNCBOB ;
 int TRAVEL_GRAPPLEHOOK ;
 int TRAVEL_JUMP ;
 int TRAVEL_JUMPPAD ;
 int TRAVEL_LADDER ;
 int TRAVEL_RAMPJUMP ;
 int TRAVEL_ROCKETJUMP ;
 int TRAVEL_STRAFEJUMP ;
 int TRAVEL_SWIM ;
 int TRAVEL_TELEPORT ;
 int TRAVEL_WALK ;
 int TRAVEL_WALKOFFLEDGE ;
 int TRAVEL_WATERJUMP ;
 TYPE_1__ aasworld ;

void AAS_ShowTotals(void)
{
 Log_Print("numvertexes = %d\r\n", aasworld.numvertexes);
 Log_Print("numplanes = %d\r\n", aasworld.numplanes);
 Log_Print("numedges = %d\r\n", aasworld.numedges);
 Log_Print("edgeindexsize = %d\r\n", aasworld.edgeindexsize);
 Log_Print("numfaces = %d\r\n", aasworld.numfaces);
 Log_Print("faceindexsize = %d\r\n", aasworld.faceindexsize);
 Log_Print("numareas = %d\r\n", aasworld.numareas);
 Log_Print("numareasettings = %d\r\n", aasworld.numareasettings);
 Log_Print("reachabilitysize = %d\r\n", aasworld.reachabilitysize);
 Log_Print("numnodes = %d\r\n", aasworld.numnodes);
 Log_Print("numportals = %d\r\n", aasworld.numportals);
 Log_Print("portalindexsize = %d\r\n", aasworld.portalindexsize);
 Log_Print("numclusters = %d\r\n", aasworld.numclusters);
 AAS_ShowNumReachabilities(TRAVEL_WALK, "walk");
 AAS_ShowNumReachabilities(TRAVEL_CROUCH, "crouch");
 AAS_ShowNumReachabilities(TRAVEL_BARRIERJUMP, "barrier jump");
 AAS_ShowNumReachabilities(TRAVEL_JUMP, "jump");
 AAS_ShowNumReachabilities(TRAVEL_LADDER, "ladder");
 AAS_ShowNumReachabilities(TRAVEL_WALKOFFLEDGE, "walk off ledge");
 AAS_ShowNumReachabilities(TRAVEL_SWIM, "swim");
 AAS_ShowNumReachabilities(TRAVEL_WATERJUMP, "water jump");
 AAS_ShowNumReachabilities(TRAVEL_TELEPORT, "teleport");
 AAS_ShowNumReachabilities(TRAVEL_ELEVATOR, "elevator");
 AAS_ShowNumReachabilities(TRAVEL_ROCKETJUMP, "rocket jump");
 AAS_ShowNumReachabilities(TRAVEL_BFGJUMP, "bfg jump");
 AAS_ShowNumReachabilities(TRAVEL_GRAPPLEHOOK, "grapple hook");
 AAS_ShowNumReachabilities(TRAVEL_DOUBLEJUMP, "double jump");
 AAS_ShowNumReachabilities(TRAVEL_RAMPJUMP, "ramp jump");
 AAS_ShowNumReachabilities(TRAVEL_STRAFEJUMP, "strafe jump");
 AAS_ShowNumReachabilities(TRAVEL_JUMPPAD, "jump pad");
 AAS_ShowNumReachabilities(TRAVEL_FUNCBOB, "func bob");
}
