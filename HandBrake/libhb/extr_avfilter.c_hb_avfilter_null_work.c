
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_filter_object_t ;
typedef int hb_buffer_t ;


 int HB_WORK_DONE ;
 int hb_log (char*) ;

int hb_avfilter_null_work( hb_filter_object_t * filter,
                            hb_buffer_t ** buf_in, hb_buffer_t ** buf_out )
{
    hb_log("hb_avfilter_null_work: It is an error to call this function.");
    return HB_WORK_DONE;
}
