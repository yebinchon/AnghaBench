#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* pb; } ;
struct TYPE_9__ {scalar_t__ buf_ptr; } ;
typedef  TYPE_1__ AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  TapeDescriptor ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;

    FUNC3(pb, 0x012e00);
    FUNC0(s, "tape descriptor key", pb->buf_ptr - 16);
    FUNC1(pb, 20);
    FUNC2(pb, 16, 0x3C0A);
    FUNC4(pb, TapeDescriptor, 0);
    FUNC0(s, "tape_desc uid", pb->buf_ptr - 16);
}