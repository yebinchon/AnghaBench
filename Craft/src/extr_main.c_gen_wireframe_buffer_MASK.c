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
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,float*) ; 
 int /*<<< orphan*/  FUNC1 (float*,float,float,float,float) ; 

GLuint FUNC2(float x, float y, float z, float n) {
    float data[72];
    FUNC1(data, x, y, z, n);
    return FUNC0(sizeof(data), data);
}