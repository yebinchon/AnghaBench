#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_10__ {int /*<<< orphan*/  codecpar; } ;
struct TYPE_9__ {int size; } ;
struct TYPE_8__ {TYPE_6__* fc; } ;
typedef  TYPE_1__ MOVContext ;
typedef  TYPE_2__ MOVAtom ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    int ret;

    if (c->fc->nb_streams < 1)
        return 0;
    st = c->fc->streams[c->fc->nb_streams - 1];

    if (atom.size < 4) {
        FUNC0(c->fc, AV_LOG_ERROR, "Empty AV1 Codec Configuration Box\n");
        return AVERROR_INVALIDDATA;
    }

    /* For now, propagate only the OBUs, if any. Once libavcodec is
       updated to handle isobmff style extradata this can be removed. */
    FUNC1(pb, 4);

    if (atom.size == 4)
        return 0;

    ret = FUNC2(c->fc, st->codecpar, pb, atom.size - 4);
    if (ret < 0)
        return ret;

    return 0;
}