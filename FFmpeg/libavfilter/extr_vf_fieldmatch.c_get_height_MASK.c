#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int height; } ;
struct TYPE_5__ {int /*<<< orphan*/  vsub; } ;
typedef  TYPE_1__ FieldMatchContext ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const FieldMatchContext *fm, const AVFrame *f, int plane)
{
    return plane ? FUNC0(f->height, fm->vsub) : f->height;
}