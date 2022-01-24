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
typedef  double vec_t ;
typedef  double* vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double*) ; 
 double FUNC1 (double) ; 

vec_t FUNC2( const vec3_t in, vec3_t out ) {
	vec_t	length, ilength;

	length = FUNC1 (in[0]*in[0] + in[1]*in[1] + in[2]*in[2]);
	if (length == 0)
	{
		FUNC0 (out);
		return 0;
	}

	ilength = 1.0/length;
	out[0] = in[0]*ilength;
	out[1] = in[1]*ilength;
	out[2] = in[2]*ilength;

	return length;
}