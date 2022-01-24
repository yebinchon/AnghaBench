#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {scalar_t__ eof; int /*<<< orphan*/ * cur_file; TYPE_2__* avf; } ;
typedef  int /*<<< orphan*/  ConcatFile ;
typedef  TYPE_1__ ConcatContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVSEEK_FLAG_BYTE ; 
 int AVSEEK_FLAG_FRAME ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 int FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *avf, int stream,
                       int64_t min_ts, int64_t ts, int64_t max_ts, int flags)
{
    ConcatContext *cat = avf->priv_data;
    ConcatFile *cur_file_saved = cat->cur_file;
    AVFormatContext *cur_avf_saved = cat->avf;
    int ret;

    if (flags & (AVSEEK_FLAG_BYTE | AVSEEK_FLAG_FRAME))
        return FUNC0(ENOSYS);
    cat->avf = NULL;
    if ((ret = FUNC2(avf, stream, min_ts, ts, max_ts, flags, cur_avf_saved)) < 0) {
        if (cat->cur_file != cur_file_saved) {
            if (cat->avf)
                FUNC1(&cat->avf);
        }
        cat->avf      = cur_avf_saved;
        cat->cur_file = cur_file_saved;
    } else {
        if (cat->cur_file != cur_file_saved) {
            FUNC1(&cur_avf_saved);
        }
        cat->eof = 0;
    }
    return ret;
}