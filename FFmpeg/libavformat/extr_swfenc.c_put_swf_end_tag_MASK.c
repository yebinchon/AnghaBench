#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_5__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int tag_pos; int tag; } ;
typedef  TYPE_1__ SWFContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int TAG_LONG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(AVFormatContext *s)
{
    SWFContext *swf = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t pos;
    int tag_len, tag;

    pos = FUNC2(pb);
    tag_len = pos - swf->tag_pos - 2;
    tag = swf->tag;
    FUNC1(pb, swf->tag_pos, SEEK_SET);
    if (tag & TAG_LONG) {
        tag &= ~TAG_LONG;
        FUNC3(pb, (tag << 6) | 0x3f);
        FUNC4(pb, tag_len - 4);
    } else {
        FUNC0(tag_len < 0x3f);
        FUNC3(pb, (tag << 6) | tag_len);
    }
    FUNC1(pb, pos, SEEK_SET);
}