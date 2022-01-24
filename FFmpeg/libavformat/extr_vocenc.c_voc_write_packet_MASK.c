#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int param_written; } ;
typedef  TYPE_2__ VocEncContext ;
struct TYPE_12__ {int codec_tag; int sample_rate; int bits_per_coded_sample; int channels; } ;
struct TYPE_11__ {TYPE_1__** streams; int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_10__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {TYPE_5__* codecpar; } ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;
typedef  TYPE_5__ AVCodecParameters ;

/* Variables and functions */
 int VOC_TYPE_EXTENDED ; 
 int VOC_TYPE_NEW_VOICE_DATA ; 
 int VOC_TYPE_VOICE_DATA ; 
 int VOC_TYPE_VOICE_DATA_CONT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, AVPacket *pkt)
{
    VocEncContext *voc = s->priv_data;
    AVCodecParameters *par = s->streams[0]->codecpar;
    AVIOContext *pb = s->pb;

    if (!voc->param_written) {
        if (par->codec_tag > 3) {
            FUNC0(pb, VOC_TYPE_NEW_VOICE_DATA);
            FUNC2(pb, pkt->size + 12);
            FUNC3(pb, par->sample_rate);
            FUNC0(pb, par->bits_per_coded_sample);
            FUNC0(pb, par->channels);
            FUNC1(pb, par->codec_tag);
            FUNC3(pb, 0);
        } else {
            if (s->streams[0]->codecpar->channels > 1) {
                FUNC0(pb, VOC_TYPE_EXTENDED);
                FUNC2(pb, 4);
                FUNC1(pb, 65536-(256000000 + par->sample_rate*par->channels/2)/(par->sample_rate*par->channels));
                FUNC0(pb, par->codec_tag);
                FUNC0(pb, par->channels - 1);
            }
            FUNC0(pb, VOC_TYPE_VOICE_DATA);
            FUNC2(pb, pkt->size + 2);
            FUNC0(pb, 256 - (1000000 + par->sample_rate/2) / par->sample_rate);
            FUNC0(pb, par->codec_tag);
        }
        voc->param_written = 1;
    } else {
        FUNC0(pb, VOC_TYPE_VOICE_DATA_CONT);
        FUNC2(pb, pkt->size);
    }

    FUNC4(pb, pkt->data, pkt->size);
    return 0;
}