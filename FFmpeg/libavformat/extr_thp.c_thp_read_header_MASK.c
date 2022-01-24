#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_16__ {int den; void* num; } ;
struct TYPE_18__ {int version; int compcount; int* components; int has_audio; int /*<<< orphan*/  audio_stream_index; int /*<<< orphan*/  video_stream_index; TYPE_3__* vst; void* framecnt; TYPE_14__ fps; void* compoff; void* first_frame; void* next_frame; void* first_framesz; void* next_framesz; void* last_frame; } ;
typedef  TYPE_2__ ThpDemuxContext ;
struct TYPE_21__ {TYPE_4__* pb; TYPE_2__* priv_data; } ;
struct TYPE_20__ {scalar_t__ maxsize; } ;
struct TYPE_19__ {int /*<<< orphan*/  index; TYPE_1__* codecpar; void* duration; void* nb_frames; } ;
struct TYPE_17__ {void* sample_rate; void* channels; scalar_t__ codec_tag; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; void* height; void* width; } ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_THP ; 
 int /*<<< orphan*/  AV_CODEC_ID_THP ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_14__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (TYPE_14__) ; 
 TYPE_3__* FUNC4 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int,void*) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s)
{
    ThpDemuxContext *thp = s->priv_data;
    AVStream *st;
    AVIOContext *pb = s->pb;
    int64_t fsize= FUNC8(pb);
    int i;

    /* Read the file header.  */
                           FUNC5(pb); /* Skip Magic.  */
    thp->version         = FUNC5(pb);

                           FUNC5(pb); /* Max buf size.  */
                           FUNC5(pb); /* Max samples.  */

    thp->fps             = FUNC1(FUNC2(FUNC5(pb)), INT_MAX);
    thp->framecnt        = FUNC5(pb);
    thp->first_framesz   = FUNC5(pb);
    pb->maxsize          = FUNC5(pb);
    if(fsize>0 && (!pb->maxsize || fsize < pb->maxsize))
        pb->maxsize= fsize;

    thp->compoff         = FUNC5(pb);
                           FUNC5(pb); /* offsetDataOffset.  */
    thp->first_frame     = FUNC5(pb);
    thp->last_frame      = FUNC5(pb);

    thp->next_framesz    = thp->first_framesz;
    thp->next_frame      = thp->first_frame;

    /* Read the component structure.  */
    FUNC7 (pb, thp->compoff, SEEK_SET);
    thp->compcount       = FUNC5(pb);

    /* Read the list of component types.  */
    FUNC6(pb, thp->components, 16);

    for (i = 0; i < thp->compcount; i++) {
        if (thp->components[i] == 0) {
            if (thp->vst)
                break;

            /* Video component.  */
            st = FUNC4(s, NULL);
            if (!st)
                return FUNC0(ENOMEM);

            /* The denominator and numerator are switched because 1/fps
               is required.  */
            FUNC9(st, 64, thp->fps.den, thp->fps.num);
            st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
            st->codecpar->codec_id = AV_CODEC_ID_THP;
            st->codecpar->codec_tag = 0;  /* no fourcc */
            st->codecpar->width = FUNC5(pb);
            st->codecpar->height = FUNC5(pb);
            st->codecpar->sample_rate = FUNC3(thp->fps);
            st->nb_frames =
            st->duration = thp->framecnt;
            thp->vst = st;
            thp->video_stream_index = st->index;

            if (thp->version == 0x11000)
                FUNC5(pb); /* Unknown.  */
        } else if (thp->components[i] == 1) {
            if (thp->has_audio != 0)
                break;

            /* Audio component.  */
            st = FUNC4(s, NULL);
            if (!st)
                return FUNC0(ENOMEM);

            st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
            st->codecpar->codec_id = AV_CODEC_ID_ADPCM_THP;
            st->codecpar->codec_tag = 0;  /* no fourcc */
            st->codecpar->channels    = FUNC5(pb); /* numChannels.  */
            st->codecpar->sample_rate = FUNC5(pb); /* Frequency.  */
            st->duration           = FUNC5(pb);

            FUNC9(st, 64, 1, st->codecpar->sample_rate);

            thp->audio_stream_index = st->index;
            thp->has_audio = 1;
        }
    }

    return 0;
}