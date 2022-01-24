#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {scalar_t__ http_method; TYPE_3__* avf; } ;
typedef  TYPE_2__ WebMChunkContext ;
struct TYPE_11__ {int (* io_open ) (TYPE_3__*,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ;int /*<<< orphan*/ * pb; TYPE_1__* oformat; TYPE_2__* priv_data; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* write_packet ) (TYPE_3__*,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int MAX_FILENAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ **) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s, int flush)
{
    WebMChunkContext *wc = s->priv_data;
    AVFormatContext *oc = wc->avf;
    int ret;
    int buffer_size;
    uint8_t *buffer;
    AVIOContext *pb;
    char filename[MAX_FILENAME_SIZE];
    AVDictionary *options = NULL;

    if (!oc->pb)
        return 0;

    if (flush)
        // Flush the cluster in WebM muxer.
        oc->oformat->write_packet(oc, NULL);
    buffer_size = FUNC3(oc->pb, &buffer);
    oc->pb = NULL;
    ret = FUNC6(s, 0, filename);
    if (ret < 0)
        goto fail;
    if (wc->http_method)
        FUNC1(&options, "method", wc->http_method, 0);
    ret = s->io_open(s, &pb, filename, AVIO_FLAG_WRITE, &options);
    if (ret < 0)
        goto fail;
    FUNC4(pb, buffer, buffer_size);
    FUNC5(s, &pb);
fail:
    FUNC0(&options);
    FUNC2(buffer);
    return (ret < 0) ? ret : 0;
}