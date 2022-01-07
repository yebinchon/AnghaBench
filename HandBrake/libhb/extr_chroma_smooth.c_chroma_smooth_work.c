
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_filter_object_t ;
typedef int hb_buffer_t ;


 int chroma_smooth_work_thread (int *,int **,int **,int ) ;

__attribute__((used)) static int chroma_smooth_work(hb_filter_object_t *filter,
                              hb_buffer_t ** buf_in,
                              hb_buffer_t ** buf_out)
{
    return chroma_smooth_work_thread(filter, buf_in, buf_out, 0);
}
