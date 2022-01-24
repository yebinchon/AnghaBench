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
struct TYPE_10__ {TYPE_3__* avf; } ;
typedef  TYPE_2__ WebMChunkContext ;
struct TYPE_11__ {scalar_t__ nb_streams; int /*<<< orphan*/ * streams; TYPE_1__* oformat; int /*<<< orphan*/  pb; TYPE_2__* priv_data; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* write_trailer ) (TYPE_3__*) ;} ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s)
{
    WebMChunkContext *wc = s->priv_data;
    AVFormatContext *oc = wc->avf;
    int ret;

    if (!oc->pb) {
        ret = FUNC2(s);
        if (ret < 0)
            goto fail;
    }
    oc->oformat->write_trailer(oc);
    ret = FUNC1(s, 0);
fail:
    oc->streams = NULL;
    oc->nb_streams = 0;
    FUNC0(oc);
    return ret;
}