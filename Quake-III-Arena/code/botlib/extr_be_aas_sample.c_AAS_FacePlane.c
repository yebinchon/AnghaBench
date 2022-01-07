
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_5__ {float dist; int normal; } ;
typedef TYPE_2__ aas_plane_t ;
struct TYPE_6__ {TYPE_1__* faces; TYPE_2__* planes; } ;
struct TYPE_4__ {size_t planenum; } ;


 int VectorCopy (int ,int ) ;
 TYPE_3__ aasworld ;

void AAS_FacePlane(int facenum, vec3_t normal, float *dist)
{
 aas_plane_t *plane;

 plane = &aasworld.planes[aasworld.faces[facenum].planenum];
 VectorCopy(plane->normal, normal);
 *dist = plane->dist;
}
