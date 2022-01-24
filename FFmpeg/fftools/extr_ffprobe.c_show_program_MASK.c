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
struct TYPE_6__ {int id; int program_num; int nb_stream_indexes; int pmt_pid; int pcr_pid; size_t* stream_index; int /*<<< orphan*/  metadata; int /*<<< orphan*/  end_time; int /*<<< orphan*/  start_time; } ;
struct TYPE_5__ {int /*<<< orphan*/ * streams; int /*<<< orphan*/ * fmt_ctx; } ;
typedef  TYPE_1__ InputFile ;
typedef  TYPE_2__ AVProgram ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 int /*<<< orphan*/  SECTION_ID_PROGRAM ; 
 int /*<<< orphan*/  SECTION_ID_PROGRAM_STREAMS ; 
 int /*<<< orphan*/  SECTION_ID_PROGRAM_TAGS ; 
 scalar_t__ do_show_program_tags ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__* selected_streams ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(WriterContext *w, InputFile *ifile, AVProgram *program)
{
    AVFormatContext *fmt_ctx = ifile->fmt_ctx;
    int i, ret = 0;

    FUNC6(w, SECTION_ID_PROGRAM);
    FUNC0("program_id", program->id);
    FUNC0("program_num", program->program_num);
    FUNC0("nb_streams", program->nb_stream_indexes);
    FUNC0("pmt_pid", program->pmt_pid);
    FUNC0("pcr_pid", program->pcr_pid);
    FUNC2("start_pts", program->start_time);
    FUNC1("start_time", program->start_time, &AV_TIME_BASE_Q);
    FUNC2("end_pts", program->end_time);
    FUNC1("end_time", program->end_time, &AV_TIME_BASE_Q);
    if (do_show_program_tags)
        ret = FUNC4(w, program->metadata, SECTION_ID_PROGRAM_TAGS);
    if (ret < 0)
        goto end;

    FUNC6(w, SECTION_ID_PROGRAM_STREAMS);
    for (i = 0; i < program->nb_stream_indexes; i++) {
        if (selected_streams[program->stream_index[i]]) {
            ret = FUNC3(w, fmt_ctx, program->stream_index[i], &ifile->streams[program->stream_index[i]], 1);
            if (ret < 0)
                break;
        }
    }
    FUNC5(w);

end:
    FUNC5(w);
    return ret;
}