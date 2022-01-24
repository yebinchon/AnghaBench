#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 float FUNC0 (float,float) ; 
 float FUNC1 (float,float) ; 

__attribute__((used)) static void FUNC2(float *verts, int numvertices)
{
   float cx=0.0f, cy=0.0f, cz=0.0f, scale=0.0f;
   float minx=0.0f, miny=0.0f, minz=0.0f;
   float maxx=0.0f, maxy=0.0f, maxz=0.0f;
   int i;
   float *v = verts;
   minx = maxx = verts[0];
   miny = maxy = verts[1];
   minz = maxz = verts[2];
   for (i=0; i<numvertices; i++) {
      float x = *v++;
      float y = *v++;
      float z = *v++;
      minx = FUNC1(minx, x);
      miny = FUNC1(miny, y);
      minz = FUNC1(minz, z);
      maxx = FUNC0(maxx, x);
      maxy = FUNC0(maxy, y);
      maxz = FUNC0(maxz, z);
      cx += x;
      cy += y;
      cz += z;
   }
   cx /= (float)numvertices;
   cy /= (float)numvertices;
   cz /= (float)numvertices;
   scale = 3.0f / (maxx-minx + maxy-miny + maxz-minz);
   v = verts;
   for (i=0; i<numvertices; i++) {
      *v = (*v-cx) * scale; v++;
      *v = (*v-cy) * scale; v++;
      *v = (*v-cz) * scale; v++;
   }
}