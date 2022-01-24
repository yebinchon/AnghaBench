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
struct TYPE_6__ {TYPE_1__* codecpar; } ;
struct TYPE_5__ {int sample_rate; int channels; scalar_t__ bits_per_coded_sample; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_G722 ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int,int) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s)
{
    AVStream *st;

    st = FUNC3(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id    = AV_CODEC_ID_ADPCM_G722;
    st->codecpar->sample_rate = 16000;
    st->codecpar->channels    = 1;

    st->codecpar->bits_per_coded_sample =
        FUNC2(st->codecpar->codec_id);

    FUNC1(st->codecpar->bits_per_coded_sample > 0);

    FUNC4(st, 64, 1, st->codecpar->sample_rate);
    return 0;
}