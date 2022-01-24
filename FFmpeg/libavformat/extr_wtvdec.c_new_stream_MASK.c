#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WtvStream ;
struct TYPE_8__ {int id; int /*<<< orphan*/  need_parsing; TYPE_1__* codecpar; int /*<<< orphan*/ * priv_data; } ;
struct TYPE_7__ {int codec_type; scalar_t__ extradata_size; scalar_t__ extradata; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVSTREAM_PARSE_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int,int) ; 

__attribute__((used)) static AVStream * FUNC5(AVFormatContext *s, AVStream *st, int sid, int codec_type)
{
    if (st) {
        if (st->codecpar->extradata) {
            FUNC1(&st->codecpar->extradata);
            st->codecpar->extradata_size = 0;
        }
    } else {
        WtvStream *wst = FUNC2(sizeof(WtvStream));
        if (!wst)
            return NULL;
        st = FUNC3(s, NULL);
        if (!st) {
            FUNC0(wst);
            return NULL;
        }
        st->id = sid;
        st->priv_data = wst;
    }
    st->codecpar->codec_type = codec_type;
    st->need_parsing      = AVSTREAM_PARSE_FULL;
    FUNC4(st, 64, 1, 10000000);
    return st;
}