#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  const* settings; } ;
typedef  TYPE_3__ signal_user_data_t ;
typedef  int /*<<< orphan*/  hb_title_t ;
struct TYPE_14__ {char* name; } ;
typedef  TYPE_4__ hb_mixdown_t ;
struct TYPE_15__ {char* name; int /*<<< orphan*/  codec; } ;
typedef  TYPE_5__ hb_encoder_t ;
struct TYPE_12__ {int samplerate; scalar_t__ bitrate; } ;
struct TYPE_11__ {char* description; } ;
struct TYPE_16__ {TYPE_2__ in; TYPE_1__ lang; } ;
typedef  TYPE_6__ hb_audio_config_t ;
typedef  double gdouble ;
typedef  char gchar ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GtkTreeModel ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 double HB_INVALID_AUDIO_QUALITY ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 double FUNC7 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC8 (int /*<<< orphan*/  const*,char*) ; 
 char* FUNC9 (int /*<<< orphan*/  const*,char*) ; 
 char* FUNC10 (char*,int /*<<< orphan*/ ,double) ; 
 TYPE_6__* FUNC11 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC12 (int,int*) ; 
 TYPE_5__* FUNC13 (int /*<<< orphan*/  const*,char*) ; 
 TYPE_4__* FUNC14 (int /*<<< orphan*/  const*,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,char*,int,...) ; 

__attribute__((used)) static void
FUNC19(
    GtkTreeModel *tm,
    GtkTreeIter *ti,
    signal_user_data_t *ud,
    const GhbValue *settings)
{
    GtkTreeIter cti;
    char *info_src, *info_src_2;
    char *info_dst, *info_dst_2;


    info_src_2 = NULL;
    info_dst_2 = NULL;

    const gchar *s_track, *s_track_name;
    gchar *s_drc, *s_gain, *s_br_quality, *s_sr;
    gdouble drc, gain;
    hb_audio_config_t *aconfig;
    int track, sr;
    int title_id, titleindex;
    const hb_title_t *title;
    const hb_encoder_t *encoder;

    title_id = FUNC8(ud->settings, "title");
    title = FUNC12(title_id, &titleindex);
    track = FUNC8(settings, "Track");
    aconfig = FUNC11(title, track);
    if (aconfig == NULL)
    {
        return;
    }


    s_track = aconfig->lang.description;
    encoder = FUNC13(settings, "Encoder");

    gboolean qe      = FUNC6(settings);
    double   quality = FUNC7(settings, "Quality");
    int      bitrate = FUNC8(settings, "Bitrate");
    if (qe && quality != HB_INVALID_AUDIO_QUALITY)
    {
        char *tmp = FUNC10(FUNC1("Quality: "),
                                       encoder->codec, quality);
        s_br_quality = FUNC4("%s\n", tmp);
        FUNC2(tmp);
    }
    else if (bitrate > 0)
    {
        s_br_quality = FUNC4(FUNC1("Bitrate: %dkbps\n"), bitrate);
    }
    else
    {
        s_br_quality = FUNC3("");
    }

    sr = FUNC8(settings, "Samplerate");
    if (sr == 0)
    {
        sr = aconfig->in.samplerate;
    }
    s_sr = FUNC4(FUNC1("%.4gkHz"), (double)sr/1000);

    const hb_mixdown_t *mix;
    mix = FUNC14(settings, "Mixdown");
    gain = FUNC7(settings, "Gain");
    s_gain = FUNC4(FUNC1("%ddB"), (int)gain);

    drc = FUNC7(settings, "DRC");
    if (drc < 1.0)
        s_drc = FUNC3(FUNC1("Off"));
    else
        s_drc = FUNC4("%.1f", drc);

    s_track_name = FUNC9(settings, "Name");

    info_src = FUNC4(FUNC1("<small>%d - %s (%.4gkHz)</small>"),
        track + 1, s_track, (double)aconfig->in.samplerate / 1000);
    if (aconfig->in.bitrate > 0)
    {
        info_src_2 = FUNC4(
            FUNC1("Bitrate: %.4gkbps"),
            (double)aconfig->in.bitrate / 1000);
    }

    if (FUNC5(encoder->codec))
    {
        info_dst = FUNC4(FUNC1("<small>Passthrough</small>"));
    }
    else
    {
        info_dst = FUNC4("<small>%s (%s) (%s)</small>",
                                   encoder->name, mix->name, s_sr);
        if (s_track_name && s_track_name[0])
        {
            info_dst_2 = FUNC4(
                FUNC1("%sGain: %s\nDRC: %s\nTrack Name: %s"),
                s_br_quality, s_gain, s_drc, s_track_name);
        }
        else
        {
            info_dst_2 = FUNC4(FUNC1("%sGain: %s\nDRC: %s"),
                                            s_br_quality, s_gain, s_drc);
        }
    }
    FUNC18(FUNC0(tm), ti,
        // These are displayed in list
        0, info_src,
        1, "-->",
        2, info_dst,
        3, "hb-edit",
        4, "hb-remove",
        5, 0.5,
        -1);

    if (info_src_2 != NULL || info_dst_2 != NULL)
    {
        if (info_src_2 == NULL)
            info_src_2 = FUNC3("");
        if (info_dst_2 == NULL)
            info_dst_2 = FUNC3("");

        // Get the child of the selection
        if (!FUNC15(tm, &cti, ti))
        {
            FUNC16(FUNC0(tm), &cti, ti);
        }
        FUNC18(FUNC0(tm), &cti,
            // These are displayed in list
            0, info_src_2,
            2, info_dst_2,
            5, 0.0,
            -1);
    }
    else
    {
        if(FUNC15(tm, &cti, ti))
        {
            FUNC17(FUNC0(tm), &cti);
        }
    }

    FUNC2(info_src);
    FUNC2(info_src_2);
    FUNC2(info_dst);
    FUNC2(info_dst_2);

    FUNC2(s_sr);
    FUNC2(s_drc);
    FUNC2(s_gain);
    FUNC2(s_br_quality);
}