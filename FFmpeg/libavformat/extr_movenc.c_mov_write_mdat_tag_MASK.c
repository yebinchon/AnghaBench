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
struct TYPE_3__ {scalar_t__ mode; int /*<<< orphan*/  mdat_pos; } ;
typedef  TYPE_1__ MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 scalar_t__ MODE_MOV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC3(AVIOContext *pb, MOVMuxContext *mov)
{
    FUNC1(pb, 8);    // placeholder for extended size field (64 bit)
    FUNC2(pb, mov->mode == MODE_MOV ? "wide" : "free");

    mov->mdat_pos = FUNC0(pb);
    FUNC1(pb, 0); /* size placeholder*/
    FUNC2(pb, "mdat");
    return 0;
}