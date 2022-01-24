#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ seekable; } ;
struct TYPE_20__ {scalar_t__ codec_id; scalar_t__ codec_tag; } ;
struct TYPE_19__ {int nb_streams; int (* io_open ) (TYPE_4__*,TYPE_7__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;TYPE_7__* pb; int /*<<< orphan*/  url; TYPE_3__** streams; TYPE_1__* oformat; TYPE_2__* priv_data; } ;
struct TYPE_18__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  sample_aspect_ratio; TYPE_5__* codecpar; } ;
struct TYPE_17__ {int /*<<< orphan*/  individual_header_trailer; scalar_t__ header_filename; int /*<<< orphan*/  write_header_trailer; int /*<<< orphan*/  header_written; TYPE_4__* avf; } ;
struct TYPE_16__ {int /*<<< orphan*/  codec_tag; } ;
typedef  TYPE_2__ SegmentContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;
typedef  TYPE_5__ AVCodecParameters ;

/* Variables and functions */
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_5__*) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_7__**) ; 
 int FUNC7 (TYPE_4__*,TYPE_7__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s)
{
    SegmentContext *seg = s->priv_data;
    AVFormatContext *oc = seg->avf;
    int ret, i;

    if (!seg->header_written) {
        for (i = 0; i < s->nb_streams; i++) {
            AVStream *st = oc->streams[i];
            AVCodecParameters *ipar, *opar;

            ipar = s->streams[i]->codecpar;
            opar = oc->streams[i]->codecpar;
            FUNC3(opar, ipar);
            if (!oc->oformat->codec_tag ||
                FUNC0 (oc->oformat->codec_tag, ipar->codec_tag) == opar->codec_id ||
                FUNC1(oc->oformat->codec_tag, ipar->codec_id) <= 0) {
                opar->codec_tag = ipar->codec_tag;
            } else {
                opar->codec_tag = 0;
            }
            st->sample_aspect_ratio = s->streams[i]->sample_aspect_ratio;
            st->time_base = s->streams[i]->time_base;
        }
        ret = FUNC4(oc, NULL);
        if (ret < 0)
            return ret;
    }

    if (!seg->write_header_trailer || seg->header_filename) {
        if (seg->header_filename) {
            FUNC2(oc, NULL);
            FUNC6(oc, &oc->pb);
        } else {
            FUNC5(&oc->pb);
        }
        if ((ret = oc->io_open(oc, &oc->pb, oc->url, AVIO_FLAG_WRITE, NULL)) < 0)
            return ret;
        if (!seg->individual_header_trailer)
            oc->pb->seekable = 0;
    }

    return 0;
}