
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_8__ {int fc; } ;
struct TYPE_7__ {unsigned int elst_count; int time_scale; TYPE_1__* elst_data; } ;
struct TYPE_6__ {scalar_t__ time; scalar_t__ duration; } ;
typedef TYPE_2__ MOVStreamContext ;
typedef TYPE_3__ MOVContext ;


 scalar_t__ av_rescale (scalar_t__,int ,scalar_t__) ;
 int avpriv_request_sample (int ,char*) ;

__attribute__((used)) static int get_edit_list_entry(MOVContext *mov,
                               const MOVStreamContext *msc,
                               unsigned int edit_list_index,
                               int64_t *edit_list_media_time,
                               int64_t *edit_list_duration,
                               int64_t global_timescale)
{
    if (edit_list_index == msc->elst_count) {
        return 0;
    }
    *edit_list_media_time = msc->elst_data[edit_list_index].time;
    *edit_list_duration = msc->elst_data[edit_list_index].duration;


    if (global_timescale == 0) {
      avpriv_request_sample(mov->fc, "Support for mvhd.timescale = 0 with editlists");
      return 0;
    }
    *edit_list_duration = av_rescale(*edit_list_duration, msc->time_scale,
                                     global_timescale);
    return 1;
}
