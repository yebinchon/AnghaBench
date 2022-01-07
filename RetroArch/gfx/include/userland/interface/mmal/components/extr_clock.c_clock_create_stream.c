
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int std_filter; int avg_filter; int id; } ;
typedef int MMAL_BOOL_T ;
typedef TYPE_1__ CLOCK_STREAM_T ;


 int LOG_ERROR (char*) ;
 int MMAL_FALSE ;
 int MMAL_TRUE ;
 int filter_init (int *,int ) ;
 TYPE_1__* vcos_calloc (int,int,char*) ;

__attribute__((used)) static MMAL_BOOL_T clock_create_stream(CLOCK_STREAM_T **stream, uint32_t id, uint32_t filter_length)
{
   CLOCK_STREAM_T *s = vcos_calloc(1, sizeof(CLOCK_STREAM_T), "clock stream");
   if (!s)
   {
      LOG_ERROR("failed to allocate stream");
      return MMAL_FALSE;
   }

   s->id = id;

   filter_init(&s->avg_filter, filter_length);
   filter_init(&s->std_filter, filter_length);

   *stream = s;
   return MMAL_TRUE;
}
