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
typedef  int /*<<< orphan*/  vec_t ;
typedef  float* vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,float) ; 
 float FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (float) ; 
 float FUNC3 (int /*<<< orphan*/ ) ; 
 float FUNC4 (float) ; 

void FUNC5(vec3_t normal,vec3_t texX,vec3_t texY)
{
	vec_t RotY,RotZ;
	// do some cleaning
	if (FUNC2(normal[0])<1e-6)
		normal[0]=0.0f;
	if (FUNC2(normal[1])<1e-6)
		normal[1]=0.0f;
	if (FUNC2(normal[2])<1e-6)
		normal[2]=0.0f;
	// compute the two rotations around Y and Z to rotate X to normal
	RotY=-FUNC0(normal[2],FUNC4(normal[1]*normal[1]+normal[0]*normal[0]));
	RotZ=FUNC0(normal[1],normal[0]);
	// rotate (0,1,0) and (0,0,1) to compute texX and texY
	texX[0]=-FUNC3(RotZ);
	texX[1]=FUNC1(RotZ);
	texX[2]=0;
	// the texY vector is along -Z ( T texture coorinates axis )
	texY[0]=-FUNC3(RotY)*FUNC1(RotZ);
	texY[1]=-FUNC3(RotY)*FUNC3(RotZ);
	texY[2]=-FUNC1(RotY);
}