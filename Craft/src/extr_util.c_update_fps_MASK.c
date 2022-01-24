#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double frames; double since; int /*<<< orphan*/  fps; } ;
typedef  TYPE_1__ FPS ;

/* Variables and functions */
 double FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (double) ; 

void FUNC2(FPS *fps) {
    fps->frames++;
    double now = FUNC0();
    double elapsed = now - fps->since;
    if (elapsed >= 1) {
        fps->fps = FUNC1(fps->frames / elapsed);
        fps->frames = 0;
        fps->since = now;
    }
}