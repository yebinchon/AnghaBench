#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  url; TYPE_2__* priv_data; } ;
struct TYPE_12__ {TYPE_1__* codecpar; } ;
struct TYPE_11__ {int /*<<< orphan*/  channels; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  codec_id; } ;
struct TYPE_10__ {int /*<<< orphan*/  channels; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ OSSAudioData ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_3__* FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int,int) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s1)
{
    OSSAudioData *s = s1->priv_data;
    AVStream *st;
    int ret;

    st = FUNC1(s1, NULL);
    if (!st) {
        return FUNC0(ENOMEM);
    }

    ret = FUNC3(s1, 0, s1->url);
    if (ret < 0) {
        return FUNC0(EIO);
    }

    /* take real parameters */
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = s->codec_id;
    st->codecpar->sample_rate = s->sample_rate;
    st->codecpar->channels = s->channels;

    FUNC2(st, 64, 1, 1000000);  /* 64 bits pts in us */
    return 0;
}