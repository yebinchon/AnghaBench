#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int flags; scalar_t__ start_time; int /*<<< orphan*/  interrupt_callback; } ;
struct TYPE_18__ {int flags; int /*<<< orphan*/  interrupt_callback; TYPE_2__* priv_data; } ;
struct TYPE_17__ {TYPE_7__* avf; scalar_t__ segment_time_metadata; TYPE_1__* files; TYPE_1__* cur_file; } ;
struct TYPE_16__ {scalar_t__ start_time; scalar_t__ duration; scalar_t__ file_start_time; scalar_t__ file_inpoint; scalar_t__ inpoint; int /*<<< orphan*/  metadata; int /*<<< orphan*/  url; } ;
typedef  TYPE_1__ ConcatFile ;
typedef  TYPE_2__ ConcatContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVFMT_FLAG_CUSTOM_IO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  INT64_MIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__**) ; 
 int FUNC5 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_7__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_7__*,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_7__*,TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,TYPE_7__*) ; 
 int FUNC10 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *avf, unsigned fileno)
{
    ConcatContext *cat = avf->priv_data;
    ConcatFile *file = &cat->files[fileno];
    int ret;

    if (cat->avf)
        FUNC4(&cat->avf);

    cat->avf = FUNC3();
    if (!cat->avf)
        return FUNC0(ENOMEM);

    cat->avf->flags |= avf->flags & ~AVFMT_FLAG_CUSTOM_IO;
    cat->avf->interrupt_callback = avf->interrupt_callback;

    if ((ret = FUNC8(cat->avf, avf)) < 0)
        return ret;

    if ((ret = FUNC6(&cat->avf, file->url, NULL, NULL)) < 0 ||
        (ret = FUNC5(cat->avf, NULL)) < 0) {
        FUNC2(avf, AV_LOG_ERROR, "Impossible to open '%s'\n", file->url);
        FUNC4(&cat->avf);
        return ret;
    }
    cat->cur_file = file;
    file->start_time = !fileno ? 0 :
                       cat->files[fileno - 1].start_time +
                       cat->files[fileno - 1].duration;
    file->file_start_time = (cat->avf->start_time == AV_NOPTS_VALUE) ? 0 : cat->avf->start_time;
    file->file_inpoint = (file->inpoint == AV_NOPTS_VALUE) ? file->file_start_time : file->inpoint;
    file->duration = FUNC9(file, cat->avf);

    if (cat->segment_time_metadata) {
        FUNC1(&file->metadata, "lavf.concatdec.start_time", file->start_time, 0);
        if (file->duration != AV_NOPTS_VALUE)
            FUNC1(&file->metadata, "lavf.concatdec.duration", file->duration, 0);
    }

    if ((ret = FUNC10(avf)) < 0)
        return ret;
    if (file->inpoint != AV_NOPTS_VALUE) {
       if ((ret = FUNC7(cat->avf, -1, INT64_MIN, file->inpoint, file->inpoint, 0)) < 0)
           return ret;
    }
    return 0;
}