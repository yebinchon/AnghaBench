#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int channels; int bits_per_raw_sample; int /*<<< orphan*/  sample_rate; scalar_t__ extradata; } ;
struct TYPE_8__ {int /*<<< orphan*/  pb; TYPE_1__** streams; TYPE_2__* priv_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  seek_table; } ;
struct TYPE_6__ {TYPE_4__* codecpar; } ;
typedef  TYPE_2__ TTAMuxContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ff_crcEDB88320_update ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    TTAMuxContext *tta = s->priv_data;
    AVCodecParameters *par = s->streams[0]->codecpar;
    int ret;

    if ((ret = FUNC1(&tta->seek_table)) < 0)
        return ret;

    /* Ignore most extradata information if present. It can be innacurate
       if for example remuxing from Matroska */
    FUNC5(s->pb, ff_crcEDB88320_update, UINT32_MAX);
    FUNC5(tta->seek_table, ff_crcEDB88320_update, UINT32_MAX);
    FUNC4(s->pb, "TTA1", 4);
    FUNC2(s->pb, par->extradata ? FUNC0(par->extradata + 4) : 1);
    FUNC2(s->pb, par->channels);
    FUNC2(s->pb, par->bits_per_raw_sample);
    FUNC3(s->pb, par->sample_rate);

    return 0;
}