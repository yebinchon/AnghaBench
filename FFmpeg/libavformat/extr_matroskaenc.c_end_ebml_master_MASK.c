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
typedef  scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ sizebytes; scalar_t__ pos; } ;
typedef  TYPE_1__ ebml_master ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(AVIOContext *pb, ebml_master master)
{
    int64_t pos = FUNC1(pb);

    if (FUNC0(pb, master.pos - master.sizebytes, SEEK_SET) < 0)
        return;
    FUNC2(pb, pos - master.pos, master.sizebytes);
    FUNC0(pb, pos, SEEK_SET);
}