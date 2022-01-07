
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ recording_time; } ;
struct TYPE_8__ {size_t file_index; TYPE_1__* enc_ctx; scalar_t__ first_pts; scalar_t__ sync_opts; } ;
struct TYPE_7__ {int time_base; } ;
typedef TYPE_2__ OutputStream ;
typedef TYPE_3__ OutputFile ;


 int AV_TIME_BASE_Q ;
 scalar_t__ INT64_MAX ;
 scalar_t__ av_compare_ts (scalar_t__,int ,scalar_t__,int ) ;
 int close_output_stream (TYPE_2__*) ;
 TYPE_3__** output_files ;

__attribute__((used)) static int check_recording_time(OutputStream *ost)
{
    OutputFile *of = output_files[ost->file_index];

    if (of->recording_time != INT64_MAX &&
        av_compare_ts(ost->sync_opts - ost->first_pts, ost->enc_ctx->time_base, of->recording_time,
                      AV_TIME_BASE_Q) >= 0) {
        close_output_stream(ost);
        return 0;
    }
    return 1;
}
