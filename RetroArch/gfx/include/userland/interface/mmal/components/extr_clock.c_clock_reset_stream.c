
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int length; } ;
struct TYPE_4__ {TYPE_2__ std_filter; TYPE_2__ avg_filter; int started; scalar_t__ mt_off_std; scalar_t__ mt_off_avg; scalar_t__ mt_off; scalar_t__ stc; scalar_t__ pts; } ;
typedef TYPE_1__ CLOCK_STREAM_T ;


 int MMAL_FALSE ;
 int filter_init (TYPE_2__*,int ) ;

__attribute__((used)) static void clock_reset_stream(CLOCK_STREAM_T *stream)
{
   if (!stream)
      return;

   stream->pts = 0;
   stream->stc = 0;
   stream->mt_off = 0;
   stream->mt_off_avg = 0;
   stream->mt_off_std = 0;
   stream->started = MMAL_FALSE;

   filter_init(&stream->avg_filter, stream->avg_filter.length);
   filter_init(&stream->std_filter, stream->std_filter.length);
}
