#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_8__ {int flags; scalar_t__ write_prft; scalar_t__ ism_lookahead; } ;
typedef  TYPE_1__ MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FF_MOV_FLAG_DASH ; 
 int FF_MOV_FLAG_GLOBAL_SIDX ; 
 int FF_MOV_FLAG_SKIP_SIDX ; 
 int FF_MOV_FLAG_SKIP_TRAILER ; 
 scalar_t__ MOV_PRFT_NB ; 
 scalar_t__ MOV_PRFT_NONE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(AVIOContext *pb, MOVMuxContext *mov, int tracks,
                              int64_t mdat_size)
{
    AVIOContext *avio_buf;
    int ret, moof_size;

    if ((ret = FUNC1(&avio_buf)) < 0)
        return ret;
    FUNC4(avio_buf, mov, tracks, 0);
    moof_size = FUNC0(avio_buf);

    if (mov->flags & FF_MOV_FLAG_DASH &&
        !(mov->flags & (FF_MOV_FLAG_GLOBAL_SIDX | FF_MOV_FLAG_SKIP_SIDX)))
        FUNC6(pb, mov, tracks, moof_size + 8 + mdat_size);

    if (mov->write_prft > MOV_PRFT_NONE && mov->write_prft < MOV_PRFT_NB)
        FUNC5(pb, mov, tracks);

    if (mov->flags & FF_MOV_FLAG_GLOBAL_SIDX ||
        !(mov->flags & FF_MOV_FLAG_SKIP_TRAILER) ||
        mov->ism_lookahead) {
        if ((ret = FUNC2(pb, mov, tracks, moof_size + 8 + mdat_size)) < 0)
            return ret;
        if (!(mov->flags & FF_MOV_FLAG_GLOBAL_SIDX) &&
            mov->flags & FF_MOV_FLAG_SKIP_TRAILER) {
            FUNC3(mov, tracks, mov->ism_lookahead + 1);
        }
    }

    return FUNC4(pb, mov, tracks, moof_size);
}