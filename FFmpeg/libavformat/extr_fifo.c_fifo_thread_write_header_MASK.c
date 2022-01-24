#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  key; } ;
struct TYPE_15__ {int nb_streams; TYPE_1__** streams; int /*<<< orphan*/  url; TYPE_3__* priv_data; } ;
struct TYPE_14__ {int /*<<< orphan*/  format_options; TYPE_4__* avf; } ;
struct TYPE_13__ {int header_written; TYPE_4__* avf; } ;
struct TYPE_12__ {scalar_t__ cur_dts; } ;
typedef  TYPE_2__ FifoThreadContext ;
typedef  TYPE_3__ FifoContext ;
typedef  TYPE_4__ AVFormatContext ;
typedef  TYPE_5__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ *,char*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ **) ; 
 int FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC8(FifoThreadContext *ctx)
{
    AVFormatContext *avf = ctx->avf;
    FifoContext *fifo = avf->priv_data;
    AVFormatContext *avf2 = fifo->avf;
    AVDictionary *format_options = NULL;
    int ret, i;

    ret = FUNC1(&format_options, fifo->format_options, 0);
    if (ret < 0)
        return ret;

    ret = FUNC7(avf2, avf->url, &format_options);
    if (ret < 0) {
        FUNC5(avf, AV_LOG_ERROR, "Error opening %s: %s\n", avf->url,
               FUNC4(ret));
        goto end;
    }

    for (i = 0;i < avf2->nb_streams; i++)
        avf2->streams[i]->cur_dts = 0;

    ret = FUNC6(avf2, &format_options);
    if (!ret)
        ctx->header_written = 1;

    // Check for options unrecognized by underlying muxer
    if (format_options) {
        AVDictionaryEntry *entry = NULL;
        while ((entry = FUNC3(format_options, "", entry, AV_DICT_IGNORE_SUFFIX)))
            FUNC5(avf2, AV_LOG_ERROR, "Unknown option '%s'\n", entry->key);
        ret = FUNC0(EINVAL);
    }

end:
    FUNC2(&format_options);
    return ret;
}