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
struct TYPE_3__ {int flags; } ;
typedef  TYPE_1__ SwsContext ;

/* Variables and functions */
 int /*<<< orphan*/  NV12 ; 
 int /*<<< orphan*/  NV21 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int SWS_ACCURATE_RND ; 
 int /*<<< orphan*/  YUV420P ; 
 int /*<<< orphan*/  YUV422P ; 
 int /*<<< orphan*/  nv12 ; 
 int /*<<< orphan*/  nv21 ; 
 int /*<<< orphan*/  yuv420p ; 
 int /*<<< orphan*/  yuv422p ; 

__attribute__((used)) static void FUNC1(SwsContext *c) {
    int accurate_rnd = c->flags & SWS_ACCURATE_RND;

    FUNC0(nv12, NV12, accurate_rnd);
    FUNC0(nv21, NV21, accurate_rnd);
    FUNC0(yuv420p, YUV420P, accurate_rnd);
    FUNC0(yuv422p, YUV422P, accurate_rnd);
}