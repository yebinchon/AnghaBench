#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_8__ {int /*<<< orphan*/ * pb; } ;
struct TYPE_7__ {TYPE_1__* codecpar; } ;
struct TYPE_6__ {int profile; int level; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVCSubDescriptor ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mxf_avc_subdescriptor_key ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(AVFormatContext *s, AVStream *st)
{
    AVIOContext *pb = s->pb;
    int64_t pos;

    FUNC2(pb, mxf_avc_subdescriptor_key, 16);
    FUNC3(pb, 0);
    pos = FUNC0(pb);

    FUNC5(pb, 16, 0x3C0A);
    FUNC6(pb, AVCSubDescriptor, 0);

    FUNC5(pb, 1, 0x8200);
    FUNC1(pb, 0xFF); // AVC Decoding Delay, unknown

    FUNC5(pb, 1, 0x8201);
    FUNC1(pb, st->codecpar->profile); // AVC Profile

    FUNC5(pb, 1, 0x8202);
    FUNC1(pb, st->codecpar->level); // AVC Level

    FUNC4(s->pb, pos);
}