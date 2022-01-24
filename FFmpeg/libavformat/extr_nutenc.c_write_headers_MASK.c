#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__* priv_data; } ;
struct TYPE_13__ {int /*<<< orphan*/  header_count; int /*<<< orphan*/  last_syncpoint_pos; TYPE_1__* avf; } ;
struct TYPE_12__ {int nb_streams; int nb_chapters; int /*<<< orphan*/ * streams; } ;
typedef  TYPE_2__ NUTContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  INFO_STARTCODE ; 
 int /*<<< orphan*/  INT_MIN ; 
 int /*<<< orphan*/  MAIN_STARTCODE ; 
 int /*<<< orphan*/  STREAM_STARTCODE ; 
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ff_nut_metadata_conv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *avctx, AVIOContext *bc)
{
    NUTContext *nut = avctx->priv_data;
    AVIOContext *dyn_bc;
    int i, ret;

    FUNC1(avctx, ff_nut_metadata_conv, NULL);

    ret = FUNC0(&dyn_bc);
    if (ret < 0)
        return ret;
    FUNC6(nut, dyn_bc);
    FUNC3(nut, bc, dyn_bc, 1, MAIN_STARTCODE);

    for (i = 0; i < nut->avf->nb_streams; i++) {
        ret = FUNC0(&dyn_bc);
        if (ret < 0)
            return ret;
        ret = FUNC7(avctx, dyn_bc, nut->avf->streams[i], i);
        if (ret < 0) {
            FUNC2(&dyn_bc);
            return ret;
        }
        FUNC3(nut, bc, dyn_bc, 1, STREAM_STARTCODE);
    }

    ret = FUNC0(&dyn_bc);
    if (ret < 0)
        return ret;
    FUNC5(nut, dyn_bc);
    FUNC3(nut, bc, dyn_bc, 1, INFO_STARTCODE);

    for (i = 0; i < nut->avf->nb_streams; i++) {
        ret = FUNC0(&dyn_bc);
        if (ret < 0)
            return ret;
        ret = FUNC8(nut, dyn_bc, i);
        if (ret > 0)
            FUNC3(nut, bc, dyn_bc, 1, INFO_STARTCODE);
        else {
            FUNC2(&dyn_bc);
            if (ret < 0)
                return ret;
        }
    }

    for (i = 0; i < nut->avf->nb_chapters; i++) {
        ret = FUNC0(&dyn_bc);
        if (ret < 0)
            return ret;
        ret = FUNC4(nut, dyn_bc, i);
        if (ret < 0) {
            FUNC2(&dyn_bc);
            return ret;
        }
        FUNC3(nut, bc, dyn_bc, 1, INFO_STARTCODE);
    }

    nut->last_syncpoint_pos = INT_MIN;
    nut->header_count++;
    return 0;
}