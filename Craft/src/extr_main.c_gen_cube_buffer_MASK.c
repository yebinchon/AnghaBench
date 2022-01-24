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
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLfloat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float**,float**,int,int,int,int,int,int,float,float,float,float,int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 

GLuint FUNC3(float x, float y, float z, float n, int w) {
    GLfloat *data = FUNC2(10, 6);
    float ao[6][4] = {0};
    float light[6][4] = {
        {0.5, 0.5, 0.5, 0.5},
        {0.5, 0.5, 0.5, 0.5},
        {0.5, 0.5, 0.5, 0.5},
        {0.5, 0.5, 0.5, 0.5},
        {0.5, 0.5, 0.5, 0.5},
        {0.5, 0.5, 0.5, 0.5}
    };
    FUNC1(data, ao, light, 1, 1, 1, 1, 1, 1, x, y, z, n, w);
    return FUNC0(10, 6, data);
}