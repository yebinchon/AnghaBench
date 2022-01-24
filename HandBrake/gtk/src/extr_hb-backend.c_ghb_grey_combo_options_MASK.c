#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  builder; } ;
typedef  TYPE_2__ signal_user_data_t ;
typedef  int /*<<< orphan*/  hb_title_t ;
struct TYPE_18__ {int muxers; scalar_t__ codec; } ;
typedef  TYPE_3__ hb_encoder_t ;
struct TYPE_19__ {int format; } ;
typedef  TYPE_4__ hb_container_t ;
struct TYPE_16__ {int /*<<< orphan*/  codec; int /*<<< orphan*/  channel_layout; } ;
struct TYPE_20__ {TYPE_1__ in; } ;
typedef  TYPE_5__ hb_audio_config_t ;
typedef  int /*<<< orphan*/  guint32 ;
typedef  int /*<<< orphan*/  gint64 ;
typedef  int /*<<< orphan*/  gint ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HB_ACODEC_NONE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_5__*) ; 
 TYPE_3__* FUNC12 (TYPE_3__ const*) ; 
 TYPE_3__* FUNC13 (TYPE_3__ const*) ; 

void
FUNC14(signal_user_data_t *ud)
{
    gint track, title_id, titleindex, acodec, fallback;
    const hb_title_t *title;
    hb_audio_config_t *aconfig = NULL;

    title_id = FUNC0(ud->settings, "title");
    title = FUNC5(title_id, &titleindex);

    track = FUNC0(ud->settings, "AudioTrack");
    aconfig = FUNC2(title, track);

    const char *mux_id;
    const hb_container_t *mux;

    mux_id = FUNC1(ud->settings, "FileFormat");
    mux = FUNC4(mux_id);

    const hb_encoder_t *enc;
    for (enc = FUNC12(NULL); enc != NULL;
         enc = FUNC12(enc))
    {
        if (!(mux->format & enc->muxers) && enc->codec != HB_ACODEC_NONE)
        {
            FUNC9(ud->builder, "AudioEncoder",
                enc->codec, TRUE);
            FUNC9(ud->builder, "AudioEncoderFallback",
                enc->codec, TRUE);
        }
        else
        {
            FUNC9(ud->builder, "AudioEncoder",
                enc->codec, FALSE);
            FUNC9(ud->builder, "AudioEncoderFallback",
                enc->codec, FALSE);
        }
    }
    for (enc = FUNC13(NULL); enc != NULL;
         enc = FUNC13(enc))
    {
        if (!(mux->format & enc->muxers))
        {
            FUNC9(ud->builder, "VideoEncoder",
                enc->codec, TRUE);
        }
        else
        {
            FUNC9(ud->builder, "VideoEncoder",
                enc->codec, FALSE);
        }
    }
    FUNC11(ud, aconfig);

    acodec = FUNC8(ud->settings, "AudioEncoder");

    gint64 layout = aconfig != NULL ? aconfig->in.channel_layout : ~0;
    guint32 in_codec = aconfig != NULL ? aconfig->in.codec : 0;
    fallback = FUNC7(ud->settings, acodec);
    gint copy_mask = FUNC3(ud->settings);
    acodec = FUNC6(mux->format, in_codec, acodec,
                                    fallback, copy_mask);
    FUNC10(ud, acodec, layout);
}