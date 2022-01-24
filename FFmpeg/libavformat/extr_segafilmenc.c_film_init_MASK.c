#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int nb_streams; TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int audio_index; int video_index; int /*<<< orphan*/ * last; int /*<<< orphan*/ * start; scalar_t__ packet_count; scalar_t__ stab_pos; } ;
struct TYPE_7__ {scalar_t__ codec_type; int /*<<< orphan*/  codec_id; } ;
typedef  TYPE_2__ FILMOutputContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *format_context)
{
    AVStream *audio = NULL;
    FILMOutputContext *film = format_context->priv_data;
    film->audio_index = -1;
    film->video_index = -1;
    film->stab_pos = 0;
    film->packet_count = 0;
    film->start = NULL;
    film->last = NULL;

    for (int i = 0; i < format_context->nb_streams; i++) {
        AVStream *st = format_context->streams[i];
        if (st->codecpar->codec_type == AVMEDIA_TYPE_AUDIO) {
            if (film->audio_index > -1) {
                FUNC1(format_context, AV_LOG_ERROR, "Sega FILM allows a maximum of one audio stream.\n");
                return FUNC0(EINVAL);
            }
            film->audio_index = i;
            audio = st;
        }

        if (st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO) {
            if (film->video_index > -1) {
                FUNC1(format_context, AV_LOG_ERROR, "Sega FILM allows a maximum of one video stream.\n");
                return FUNC0(EINVAL);
            }
            film->video_index = i;
        }

        if (film->video_index == -1) {
            FUNC1(format_context, AV_LOG_ERROR, "No video stream present.\n");
            return FUNC0(EINVAL);
        }
    }

    if (audio != NULL && FUNC2(audio->codecpar->codec_id) < 0) {
        FUNC1(format_context, AV_LOG_ERROR, "Incompatible audio stream format.\n");
        return FUNC0(EINVAL);
    }

    return 0;
}