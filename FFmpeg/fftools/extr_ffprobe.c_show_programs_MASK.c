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
typedef  int /*<<< orphan*/  WriterContext ;
struct TYPE_6__ {int nb_programs; int /*<<< orphan*/ ** programs; } ;
struct TYPE_5__ {TYPE_2__* fmt_ctx; } ;
typedef  TYPE_1__ InputFile ;
typedef  int /*<<< orphan*/  AVProgram ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  SECTION_ID_PROGRAMS ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(WriterContext *w, InputFile *ifile)
{
    AVFormatContext *fmt_ctx = ifile->fmt_ctx;
    int i, ret = 0;

    FUNC2(w, SECTION_ID_PROGRAMS);
    for (i = 0; i < fmt_ctx->nb_programs; i++) {
        AVProgram *program = fmt_ctx->programs[i];
        if (!program)
            continue;
        ret = FUNC0(w, ifile, program);
        if (ret < 0)
            break;
    }
    FUNC1(w);
    return ret;
}