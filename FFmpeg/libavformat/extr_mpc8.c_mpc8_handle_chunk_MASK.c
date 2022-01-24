#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_4__ {int /*<<< orphan*/ * pb; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
#define  TAG_SEEKTBLOFF 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(AVFormatContext *s, int tag, int64_t chunk_pos, int64_t size)
{
    AVIOContext *pb = s->pb;
    int64_t pos, off;

    switch(tag){
    case TAG_SEEKTBLOFF:
        pos = FUNC2(pb) + size;
        off = FUNC3(pb);
        FUNC4(s, chunk_pos + off);
        FUNC0(pb, pos, SEEK_SET);
        break;
    default:
        FUNC1(pb, size);
    }
}