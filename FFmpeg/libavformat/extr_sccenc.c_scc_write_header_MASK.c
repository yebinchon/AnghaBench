#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* codecpar; } ;
struct TYPE_9__ {int nb_streams; int /*<<< orphan*/  pb; TYPE_5__** streams; TYPE_2__* priv_data; } ;
struct TYPE_8__ {int prev_h; int prev_m; int prev_s; int prev_f; scalar_t__ inside; } ;
struct TYPE_7__ {scalar_t__ codec_type; scalar_t__ codec_id; } ;
typedef  TYPE_2__ SCCContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ; 
 scalar_t__ AV_CODEC_ID_EIA_608 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int,int,int) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *avf)
{
    SCCContext *scc = avf->priv_data;

    if (avf->nb_streams != 1 ||
        avf->streams[0]->codecpar->codec_type != AVMEDIA_TYPE_SUBTITLE) {
        FUNC1(avf, AV_LOG_ERROR,
               "SCC supports only a single subtitles stream.\n");
        return FUNC0(EINVAL);
    }
    if (avf->streams[0]->codecpar->codec_id != AV_CODEC_ID_EIA_608) {
        FUNC1(avf, AV_LOG_ERROR,
               "Unsupported subtitles codec: %s\n",
               FUNC2(avf->streams[0]->codecpar->codec_id));
        return FUNC0(EINVAL);
    }
    FUNC4(avf->streams[0], 64, 1, 1000);
    FUNC3(avf->pb, "Scenarist_SCC V1.0\n");

    scc->prev_h = scc->prev_m = scc->prev_s = scc->prev_f = -1;
    scc->inside = 0;

    return 0;
}