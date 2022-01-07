
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* stc; void* pts; int started; } ;
typedef void* TIME_T ;
typedef TYPE_1__ CLOCK_STREAM_T ;


 int MMAL_TRUE ;

__attribute__((used)) static void clock_start_stream(CLOCK_STREAM_T *stream, TIME_T stc, TIME_T pts)
{
   stream->started = MMAL_TRUE;
   stream->pts = pts;
   stream->stc = stc;
}
