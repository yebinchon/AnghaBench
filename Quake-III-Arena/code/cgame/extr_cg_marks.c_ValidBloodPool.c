
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_3__ {int entityNum; int fraction; int startsolid; } ;
typedef TYPE_1__ trace_t ;
typedef int qboolean ;


 int AngleVectors (int ,int *,int ,int ) ;
 int CG_Trace (TYPE_1__*,int ,int *,int *,int ,int,int ) ;
 int CONTENTS_SOLID ;
 int EXTRUDE_DIST ;
 int MAX_ENTITIES ;
 int VectorMA (int ,int,int ,int ) ;
 int VectorSet (int ,int ,int ,int) ;
 int qfalse ;
 int qtrue ;
 int vectoangles (int ,int ) ;

qboolean ValidBloodPool (vec3_t start)
{


 vec3_t angles;
 vec3_t right, up;
 vec3_t this_pos, x_pos, center_pos, end_pos;
 float x, y;
 float fwidth, fheight;
 trace_t trace;
 vec3_t normal;

 fwidth = 16;
 fheight = 16;

 VectorSet (normal, 0, 0, 1);

 vectoangles (normal, angles);
 AngleVectors (angles, ((void*)0), right, up);

 VectorMA (start, 0.5, normal, center_pos);

 for (x= -fwidth/2; x<fwidth; x+= fwidth)
 {
  VectorMA (center_pos, x, right, x_pos);

  for (y= -fheight/2; y<fheight; y+= fheight)
  {
   VectorMA (x_pos, y, up, this_pos);
   VectorMA (this_pos, -0.5*2, normal, end_pos);

   CG_Trace (&trace, this_pos, ((void*)0), ((void*)0), end_pos, -1, CONTENTS_SOLID);


   if (trace.entityNum < (MAX_ENTITIES - 1))
    return qfalse;

   if (!(!trace.startsolid && trace.fraction < 1))
    return qfalse;

  }
 }

 return qtrue;
}
