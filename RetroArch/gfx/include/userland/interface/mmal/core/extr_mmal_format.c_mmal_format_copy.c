
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ extradata_size; scalar_t__ extradata; int * es; } ;
typedef TYPE_1__ MMAL_ES_FORMAT_T ;



void mmal_format_copy(MMAL_ES_FORMAT_T *fmt_dst, MMAL_ES_FORMAT_T *fmt_src)
{
   void *backup = fmt_dst->es;
   *fmt_dst->es = *fmt_src->es;
   *fmt_dst = *fmt_src;
   fmt_dst->es = backup;
   fmt_dst->extradata = 0;
   fmt_dst->extradata_size = 0;
}
