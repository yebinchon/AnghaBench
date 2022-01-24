#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WriterContext ;
struct TYPE_3__ {int nb_streams; int /*<<< orphan*/ * streams; int /*<<< orphan*/ * fmt_ctx; } ;
typedef  TYPE_1__ InputFile ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  SECTION_ID_STREAMS ; 
 scalar_t__* selected_streams ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(WriterContext *w, InputFile *ifile)
{
    AVFormatContext *fmt_ctx = ifile->fmt_ctx;
    int i, ret = 0;

    FUNC2(w, SECTION_ID_STREAMS);
    for (i = 0; i < ifile->nb_streams; i++)
        if (selected_streams[i]) {
            ret = FUNC0(w, fmt_ctx, i, &ifile->streams[i], 0);
            if (ret < 0)
                break;
        }
    FUNC1(w);

    return ret;
}