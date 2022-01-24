#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_13__ {scalar_t__ buffer; } ;
struct TYPE_12__ {int /*<<< orphan*/  len; } ;
struct TYPE_11__ {int /*<<< orphan*/  data; int /*<<< orphan*/  metadata; } ;
struct TYPE_10__ {TYPE_6__ gb; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ PNGDecContext ;
typedef  TYPE_2__ AVFrameSideData ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_3__ AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_FRAME_DATA_ICC_PROFILE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int) ; 
 int FUNC9 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(PNGDecContext *s, int length, AVFrame *f)
{
    int ret, cnt = 0;
    uint8_t *data, profile_name[82];
    AVBPrint bp;
    AVFrameSideData *sd;

    while ((profile_name[cnt++] = FUNC7(&s->gb)) && cnt < 81);
    if (cnt > 80) {
        FUNC6(s->avctx, AV_LOG_ERROR, "iCCP with invalid name!\n");
        return AVERROR_INVALIDDATA;
    }

    length = FUNC1(length - cnt, 0);

    if (FUNC7(&s->gb) != 0) {
        FUNC6(s->avctx, AV_LOG_ERROR, "iCCP with invalid compression!\n");
        return AVERROR_INVALIDDATA;
    }

    length = FUNC1(length - 1, 0);

    if ((ret = FUNC9(&bp, s->gb.buffer, s->gb.buffer + length)) < 0)
        return ret;

    ret = FUNC2(&bp, (char **)&data);
    if (ret < 0)
        return ret;

    sd = FUNC4(f, AV_FRAME_DATA_ICC_PROFILE, bp.len);
    if (!sd) {
        FUNC5(data);
        return FUNC0(ENOMEM);
    }

    FUNC3(&sd->metadata, "name", profile_name, 0);
    FUNC10(sd->data, data, bp.len);
    FUNC5(data);

    /* ICC compressed data and CRC */
    FUNC8(&s->gb, length + 4);

    return 0;
}