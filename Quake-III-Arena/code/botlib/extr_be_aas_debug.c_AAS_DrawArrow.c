
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ vec3_t ;


 int AAS_DebugLine (TYPE_1__,TYPE_1__,int) ;
 int CrossProduct (TYPE_1__,TYPE_1__,TYPE_1__) ;
 float DotProduct (TYPE_1__,TYPE_1__) ;
 int VectorCopy (TYPE_1__,TYPE_1__) ;
 int VectorMA (TYPE_1__,int,TYPE_1__,TYPE_1__) ;
 int VectorNormalize (TYPE_1__) ;
 int VectorSet (TYPE_1__,int,int ,int ) ;
 int VectorSubtract (TYPE_1__,TYPE_1__,TYPE_1__) ;

void AAS_DrawArrow(vec3_t start, vec3_t end, int linecolor, int arrowcolor)
{
 vec3_t dir, cross, p1, p2, up = {0, 0, 1};
 float dot;

 VectorSubtract(end, start, dir);
 VectorNormalize(dir);
 dot = DotProduct(dir, up);
 if (dot > 0.99 || dot < -0.99) VectorSet(cross, 1, 0, 0);
 else CrossProduct(dir, up, cross);

 VectorMA(end, -6, dir, p1);
 VectorCopy(p1, p2);
 VectorMA(p1, 6, cross, p1);
 VectorMA(p2, -6, cross, p2);

 AAS_DebugLine(start, end, linecolor);
 AAS_DebugLine(p1, end, arrowcolor);
 AAS_DebugLine(p2, end, arrowcolor);
}
