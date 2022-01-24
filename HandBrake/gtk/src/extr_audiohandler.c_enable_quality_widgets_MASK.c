#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ HB_INVALID_AUDIO_QUALITY ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int,int,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(
    signal_user_data_t *ud,
    gboolean            quality_enable,
    int                 acodec,
    int                 sr,
    int                 mix)
{
    GtkWidget *widget;
    gboolean quality_sensitive = TRUE;
    gboolean bitrate_sensitive = TRUE;

    widget = FUNC0(ud->builder, "AudioBitrate");
    FUNC4(widget, !quality_enable);
    widget = FUNC0(ud->builder, "AudioTrackQualityBox");
    FUNC4(widget, quality_enable);

    if (FUNC6(acodec) == HB_INVALID_AUDIO_QUALITY)
    {
        quality_sensitive = FALSE;
    }
    if (FUNC5(acodec, sr, mix) == -1)
    {
        bitrate_sensitive = FALSE;
    }

    if (!quality_sensitive)
    {
        widget = FUNC0(ud->builder, "AudioTrackBitrateEnable");
        FUNC2(FUNC1(widget),
                                     !quality_sensitive);
    }
    widget = FUNC0(ud->builder, "AudioTrackQualityEnable");
    FUNC3(widget, quality_sensitive);

    widget = FUNC0(ud->builder, "AudioBitrate");
    FUNC3(widget, bitrate_sensitive);
    widget = FUNC0(ud->builder, "AudioTrackQualityEnableBox");
    FUNC3(widget, bitrate_sensitive || quality_sensitive);
    widget = FUNC0(ud->builder, "AudioTrackQualityBox");
    FUNC3(widget, quality_sensitive);
}