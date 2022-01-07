
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int AAS_PredictClientMovement; int AAS_Swimming; int AAS_AlternativeRouteGoals; int AAS_PredictRoute; int AAS_EnableRoutingArea; int AAS_AreaTravelTimeToGoalArea; int AAS_AreaReachability; int AAS_IntForBSPEpairKey; int AAS_FloatForBSPEpairKey; int AAS_VectorForBSPEpairKey; int AAS_ValueForBSPEpairKey; int AAS_NextBSPEntity; int AAS_PointContents; int AAS_AreaInfo; int AAS_BBoxAreas; int AAS_TraceAreas; int AAS_PointReachabilityAreaIndex; int AAS_PointAreaNum; int AAS_Time; int AAS_PresenceTypeBoundingBox; int AAS_Initialized; int AAS_EntityInfo; } ;
typedef TYPE_1__ aas_export_t ;


 int AAS_AlternativeRouteGoals ;
 int AAS_AreaInfo ;
 int AAS_AreaReachability ;
 int AAS_AreaTravelTimeToGoalArea ;
 int AAS_BBoxAreas ;
 int AAS_EnableRoutingArea ;
 int AAS_EntityInfo ;
 int AAS_FloatForBSPEpairKey ;
 int AAS_Initialized ;
 int AAS_IntForBSPEpairKey ;
 int AAS_NextBSPEntity ;
 int AAS_PointAreaNum ;
 int AAS_PointContents ;
 int AAS_PointReachabilityAreaIndex ;
 int AAS_PredictClientMovement ;
 int AAS_PredictRoute ;
 int AAS_PresenceTypeBoundingBox ;
 int AAS_Swimming ;
 int AAS_Time ;
 int AAS_TraceAreas ;
 int AAS_ValueForBSPEpairKey ;
 int AAS_VectorForBSPEpairKey ;

__attribute__((used)) static void Init_AAS_Export( aas_export_t *aas ) {



 aas->AAS_EntityInfo = AAS_EntityInfo;



 aas->AAS_Initialized = AAS_Initialized;
 aas->AAS_PresenceTypeBoundingBox = AAS_PresenceTypeBoundingBox;
 aas->AAS_Time = AAS_Time;



 aas->AAS_PointAreaNum = AAS_PointAreaNum;
 aas->AAS_PointReachabilityAreaIndex = AAS_PointReachabilityAreaIndex;
 aas->AAS_TraceAreas = AAS_TraceAreas;
 aas->AAS_BBoxAreas = AAS_BBoxAreas;
 aas->AAS_AreaInfo = AAS_AreaInfo;



 aas->AAS_PointContents = AAS_PointContents;
 aas->AAS_NextBSPEntity = AAS_NextBSPEntity;
 aas->AAS_ValueForBSPEpairKey = AAS_ValueForBSPEpairKey;
 aas->AAS_VectorForBSPEpairKey = AAS_VectorForBSPEpairKey;
 aas->AAS_FloatForBSPEpairKey = AAS_FloatForBSPEpairKey;
 aas->AAS_IntForBSPEpairKey = AAS_IntForBSPEpairKey;



 aas->AAS_AreaReachability = AAS_AreaReachability;



 aas->AAS_AreaTravelTimeToGoalArea = AAS_AreaTravelTimeToGoalArea;
 aas->AAS_EnableRoutingArea = AAS_EnableRoutingArea;
 aas->AAS_PredictRoute = AAS_PredictRoute;



 aas->AAS_AlternativeRouteGoals = AAS_AlternativeRouteGoals;



 aas->AAS_Swimming = AAS_Swimming;
 aas->AAS_PredictClientMovement = AAS_PredictClientMovement;
}
