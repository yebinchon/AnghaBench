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
typedef  enum AVSphericalProjection { ____Placeholder_AVSphericalProjection } AVSphericalProjection ;

/* Variables and functions */
 unsigned int FUNC0 (char const**) ; 
 char const** spherical_projection_names ; 

const char *FUNC1(enum AVSphericalProjection projection)
{
    if ((unsigned)projection >= FUNC0(spherical_projection_names))
        return "unknown";

    return spherical_projection_names[projection];
}