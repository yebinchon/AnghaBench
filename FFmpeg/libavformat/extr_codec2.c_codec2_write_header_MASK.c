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
struct TYPE_8__ {int nb_streams; int /*<<< orphan*/  pb; TYPE_2__** streams; } ;
struct TYPE_7__ {TYPE_1__* codecpar; } ;
struct TYPE_6__ {scalar_t__ codec_id; scalar_t__ extradata_size; int /*<<< orphan*/  extradata; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AVPRIV_CODEC2_EXTRADATA_SIZE ; 
 int /*<<< orphan*/  AVPRIV_CODEC2_MAGIC ; 
 scalar_t__ AV_CODEC_ID_CODEC2 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s)
{
    AVStream *st;

    if (s->nb_streams != 1 || s->streams[0]->codecpar->codec_id != AV_CODEC_ID_CODEC2) {
        FUNC1(s, AV_LOG_ERROR, ".c2 files must have exactly one codec2 stream\n");
        return FUNC0(EINVAL);
    }

    st = s->streams[0];

    if (st->codecpar->extradata_size != AVPRIV_CODEC2_EXTRADATA_SIZE) {
        FUNC1(s, AV_LOG_ERROR, ".c2 files require exactly %i bytes of extradata (got %i)\n",
               AVPRIV_CODEC2_EXTRADATA_SIZE, st->codecpar->extradata_size);
        return FUNC0(EINVAL);
    }

    FUNC2(s->pb, AVPRIV_CODEC2_MAGIC);
    FUNC3(s->pb, st->codecpar->extradata, AVPRIV_CODEC2_EXTRADATA_SIZE);

    return 0;
}