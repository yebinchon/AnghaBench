#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_11__ {int (* avs_get_version ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* avs_release_value ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* avs_get_video_info ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* avs_take_clip ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* avs_invoke ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_10__ {char* filename; TYPE_1__* priv_data; } ;
struct TYPE_9__ {int /*<<< orphan*/  clip; int /*<<< orphan*/  vi; int /*<<< orphan*/  env; } ;
typedef  TYPE_1__ AviSynthContext ;
typedef  int /*<<< orphan*/  AVS_Value ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  CP_THREAD_ACP ; 
 int /*<<< orphan*/  CP_UTF8 ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__ avs_library ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(AVFormatContext *s)
{
    AviSynthContext *avs = s->priv_data;
    AVS_Value arg, val;
    int ret;
#ifdef USING_AVISYNTH
    char filename_ansi[MAX_PATH * 4];
    wchar_t filename_wc[MAX_PATH * 4];
#endif

    if ((ret = FUNC3(s)))
        return ret;

#ifdef USING_AVISYNTH
    /* Convert UTF-8 to ANSI code page */
    MultiByteToWideChar(CP_UTF8, 0, s->filename, -1, filename_wc, MAX_PATH * 4);
    WideCharToMultiByte(CP_THREAD_ACP, 0, filename_wc, -1, filename_ansi,
                        MAX_PATH * 4, NULL, NULL);
    arg = avs_new_value_string(filename_ansi);
#else
    arg = FUNC9(s->filename);
#endif
    val = avs_library.avs_invoke(avs->env, "Import", arg, 0);
    if (FUNC8(val)) {
        FUNC2(s, AV_LOG_ERROR, "%s\n", FUNC6(val));
        ret = AVERROR_UNKNOWN;
        goto fail;
    }
    if (!FUNC7(val)) {
        FUNC2(s, AV_LOG_ERROR, "AviSynth script did not return a clip\n");
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    avs->clip = avs_library.avs_take_clip(val, avs->env);
    avs->vi   = avs_library.avs_get_video_info(avs->clip);

#ifdef USING_AVISYNTH
    /* On Windows, FFmpeg supports AviSynth interface version 6 or higher.
     * This includes AviSynth 2.6 RC1 or higher, and AviSynth+ r1718 or higher,
     * and excludes 2.5 and the 2.6 alphas. Since AvxSynth identifies itself
     * as interface version 3 like 2.5.8, this needs to be special-cased. */

    if (avs_library.avs_get_version(avs->clip) < 6) {
        av_log(s, AV_LOG_ERROR,
               "AviSynth version is too old. Please upgrade to either AviSynth 2.6 >= RC1 or AviSynth+ >= r1718.\n");
        ret = AVERROR_UNKNOWN;
        goto fail;
    }
#endif

    /* Release the AVS_Value as it will go out of scope. */
    avs_library.avs_release_value(val);

    if ((ret = FUNC5(s)))
        goto fail;

    return 0;

fail:
    FUNC4(avs);
    return ret;
}