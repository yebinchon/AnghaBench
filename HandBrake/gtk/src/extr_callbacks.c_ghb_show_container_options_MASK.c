#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
struct TYPE_6__ {int format; } ;
typedef  TYPE_2__ hb_container_t ;
typedef  scalar_t__ gint ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int HB_MUX_MASK_MP4 ; 
 scalar_t__ HB_VCODEC_X264_8BIT ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

void FUNC5(signal_user_data_t *ud)
{
    GtkWidget *w1, *w2, *w3;
    w1 = FUNC0(ud->builder, "AlignAVStart");
    w2 = FUNC0(ud->builder, "Mp4HttpOptimize");
    w3 = FUNC0(ud->builder, "Mp4iPodCompatible");

    const char *mux_id;
    const hb_container_t *mux;

    mux_id = FUNC1(ud->settings, "FileFormat");
    mux = FUNC2(mux_id);

    gint enc = FUNC3(ud->settings, "VideoEncoder");

    FUNC4(w1, (mux->format & HB_MUX_MASK_MP4));
    FUNC4(w2, (mux->format & HB_MUX_MASK_MP4));
    FUNC4(w3, (mux->format & HB_MUX_MASK_MP4) &&
                               (enc == HB_VCODEC_X264_8BIT));
}