#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_14__ {int /*<<< orphan*/  name; } ;
struct TYPE_13__ {int nb_components; } ;
struct TYPE_12__ {int nb_channel_layouts; scalar_t__* channel_layouts; int /*<<< orphan*/  all_counts; scalar_t__ all_layouts; } ;
struct TYPE_11__ {int nb_formats; int* formats; } ;
struct TYPE_10__ {scalar_t__ type; int format; int sample_rate; TYPE_6__* out_channel_layouts; TYPE_6__* in_channel_layouts; TYPE_5__* out_samplerates; TYPE_5__* in_samplerates; TYPE_5__* out_formats; TYPE_5__* in_formats; scalar_t__ channel_layout; int /*<<< orphan*/  channels; TYPE_8__* src; TYPE_1__* dst; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_PIX_FMT_NONE ; 
 int AV_SAMPLE_FMT_NONE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_7__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__**) ; 
 int FUNC10 (int,int,int) ; 

__attribute__((used)) static int FUNC11(AVFilterLink *link, AVFilterLink *ref)
{
    if (!link || !link->in_formats)
        return 0;

    if (link->type == AVMEDIA_TYPE_VIDEO) {
        if(ref && ref->type == AVMEDIA_TYPE_VIDEO){
            //FIXME: This should check for AV_PIX_FMT_FLAG_ALPHA after PAL8 pixel format without alpha is implemented
            int has_alpha= FUNC7(ref->format)->nb_components % 2 == 0;
            enum AVPixelFormat best= AV_PIX_FMT_NONE;
            int i;
            for (i=0; i<link->in_formats->nb_formats; i++) {
                enum AVPixelFormat p = link->in_formats->formats[i];
                best= FUNC2(best, p, ref->format, has_alpha, NULL);
            }
            FUNC6(link->src,AV_LOG_DEBUG, "picking %s out of %d ref:%s alpha:%d\n",
                   FUNC4(best), link->in_formats->nb_formats,
                   FUNC4(ref->format), has_alpha);
            link->in_formats->formats[0] = best;
        }
    } else if (link->type == AVMEDIA_TYPE_AUDIO) {
        if(ref && ref->type == AVMEDIA_TYPE_AUDIO){
            enum AVSampleFormat best= AV_SAMPLE_FMT_NONE;
            int i;
            for (i=0; i<link->in_formats->nb_formats; i++) {
                enum AVSampleFormat p = link->in_formats->formats[i];
                best = FUNC10(best, p, ref->format);
            }
            FUNC6(link->src,AV_LOG_DEBUG, "picking %s out of %d ref:%s\n",
                   FUNC5(best), link->in_formats->nb_formats,
                   FUNC5(ref->format));
            link->in_formats->formats[0] = best;
        }
    }

    link->in_formats->nb_formats = 1;
    link->format = link->in_formats->formats[0];

    if (link->type == AVMEDIA_TYPE_AUDIO) {
        if (!link->in_samplerates->nb_formats) {
            FUNC6(link->src, AV_LOG_ERROR, "Cannot select sample rate for"
                   " the link between filters %s and %s.\n", link->src->name,
                   link->dst->name);
            return FUNC0(EINVAL);
        }
        link->in_samplerates->nb_formats = 1;
        link->sample_rate = link->in_samplerates->formats[0];

        if (link->in_channel_layouts->all_layouts) {
            FUNC6(link->src, AV_LOG_ERROR, "Cannot select channel layout for"
                   " the link between filters %s and %s.\n", link->src->name,
                   link->dst->name);
            if (!link->in_channel_layouts->all_counts)
                FUNC6(link->src, AV_LOG_ERROR, "Unknown channel layouts not "
                       "supported, try specifying a channel layout using "
                       "'aformat=channel_layouts=something'.\n");
            return FUNC0(EINVAL);
        }
        link->in_channel_layouts->nb_channel_layouts = 1;
        link->channel_layout = link->in_channel_layouts->channel_layouts[0];
        if ((link->channels = FUNC1(link->channel_layout)))
            link->channel_layout = 0;
        else
            link->channels = FUNC3(link->channel_layout);
    }

    FUNC9(&link->in_formats);
    FUNC9(&link->out_formats);
    FUNC9(&link->in_samplerates);
    FUNC9(&link->out_samplerates);
    FUNC8(&link->in_channel_layouts);
    FUNC8(&link->out_channel_layouts);

    return 0;
}