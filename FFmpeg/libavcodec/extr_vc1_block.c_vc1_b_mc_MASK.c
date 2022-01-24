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
typedef  int /*<<< orphan*/  VC1Context ;

/* Variables and functions */
 int BMV_TYPE_BACKWARD ; 
 int BMV_TYPE_INTERPOLATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC2(VC1Context *v, int dmv_x[2], int dmv_y[2],
                            int direct, int mode)
{
    if (direct) {
        FUNC1(v, 0);
        FUNC0(v);
        return;
    }
    if (mode == BMV_TYPE_INTERPOLATED) {
        FUNC1(v, 0);
        FUNC0(v);
        return;
    }

    FUNC1(v, (mode == BMV_TYPE_BACKWARD));
}