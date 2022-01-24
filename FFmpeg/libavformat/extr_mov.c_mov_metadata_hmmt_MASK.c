#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  eof_reached; } ;
struct TYPE_6__ {int /*<<< orphan*/  fc; scalar_t__ ignore_chapters; } ;
typedef  TYPE_1__ MOVContext ;
typedef  TYPE_2__ AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(MOVContext *c, AVIOContext *pb, unsigned len)
{
    int i, n_hmmt;

    if (len < 2)
        return 0;
    if (c->ignore_chapters)
        return 0;

    n_hmmt = FUNC1(pb);
    for (i = 0; i < n_hmmt && !pb->eof_reached; i++) {
        int moment_time = FUNC1(pb);
        FUNC2(c->fc, i, FUNC0(1, 1000), moment_time, AV_NOPTS_VALUE, NULL);
    }
    return 0;
}