#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_8__ {scalar_t__ pix_fmt; int tag; int /*<<< orphan*/  bps; } ;
struct TYPE_7__ {TYPE_1__* par; } ;
struct TYPE_6__ {int codec_tag; scalar_t__ format; int /*<<< orphan*/  bits_per_coded_sample; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PIX_FMT_GRAY8 ; 
 scalar_t__ AV_PIX_FMT_NONE ; 
 int FUNC0 (TYPE_3__*) ; 
 int FUNC1 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  avpriv_pix_fmt_bps_mov ; 
 TYPE_3__* mov_pix_fmt_tags ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, MOVTrack *track)
{
    int tag = track->par->codec_tag;
    int i;
    enum AVPixelFormat pix_fmt;

    for (i = 0; i < FUNC0(mov_pix_fmt_tags); i++) {
        if (track->par->format == mov_pix_fmt_tags[i].pix_fmt) {
            tag = mov_pix_fmt_tags[i].tag;
            track->par->bits_per_coded_sample = mov_pix_fmt_tags[i].bps;
            if (track->par->codec_tag == mov_pix_fmt_tags[i].tag)
                break;
        }
    }

    pix_fmt = FUNC4(avpriv_pix_fmt_bps_mov,
                                  track->par->bits_per_coded_sample);
    if (tag == FUNC1('r','a','w',' ') &&
        track->par->format != pix_fmt &&
        track->par->format != AV_PIX_FMT_GRAY8 &&
        track->par->format != AV_PIX_FMT_NONE)
        FUNC3(s, AV_LOG_ERROR, "%s rawvideo cannot be written to mov, output file will be unreadable\n",
               FUNC2(track->par->format));
    return tag;
}