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
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {char* name; char* long_name; char* extensions; char* mime_type; scalar_t__ video_codec; scalar_t__ audio_codec; scalar_t__ subtitle_codec; scalar_t__ priv_class; } ;
typedef  TYPE_1__ AVOutputFormat ;
typedef  TYPE_2__ AVCodecDescriptor ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_NONE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_OPT_FLAG_ENCODING_PARAM ; 
 TYPE_1__* FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_2__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const char *name)
{
    const AVCodecDescriptor *desc;
    const AVOutputFormat *fmt = FUNC0(name, NULL, NULL);

    if (!fmt) {
        FUNC1(NULL, AV_LOG_ERROR, "Unknown format '%s'.\n", name);
        return;
    }

    FUNC3("Muxer %s [%s]:\n", fmt->name, fmt->long_name);

    if (fmt->extensions)
        FUNC3("    Common extensions: %s.\n", fmt->extensions);
    if (fmt->mime_type)
        FUNC3("    Mime type: %s.\n", fmt->mime_type);
    if (fmt->video_codec != AV_CODEC_ID_NONE &&
        (desc = FUNC2(fmt->video_codec))) {
        FUNC3("    Default video codec: %s.\n", desc->name);
    }
    if (fmt->audio_codec != AV_CODEC_ID_NONE &&
        (desc = FUNC2(fmt->audio_codec))) {
        FUNC3("    Default audio codec: %s.\n", desc->name);
    }
    if (fmt->subtitle_codec != AV_CODEC_ID_NONE &&
        (desc = FUNC2(fmt->subtitle_codec))) {
        FUNC3("    Default subtitle codec: %s.\n", desc->name);
    }

    if (fmt->priv_class)
        FUNC4(fmt->priv_class, AV_OPT_FLAG_ENCODING_PARAM);
}