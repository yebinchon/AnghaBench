
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mainloop; scalar_t__ context; scalar_t__ stream; } ;
typedef TYPE_1__ pa_t ;


 int free (TYPE_1__*) ;
 int pa_context_disconnect (scalar_t__) ;
 int pa_context_unref (scalar_t__) ;
 int pa_stream_disconnect (scalar_t__) ;
 int pa_stream_unref (scalar_t__) ;
 int pa_threaded_mainloop_free (scalar_t__) ;
 int pa_threaded_mainloop_stop (scalar_t__) ;

__attribute__((used)) static void pulse_free(void *data)
{
   pa_t *pa = (pa_t*)data;

   if (!pa)
      return;

   if (pa->mainloop)
      pa_threaded_mainloop_stop(pa->mainloop);

   if (pa->stream)
   {
      pa_stream_disconnect(pa->stream);
      pa_stream_unref(pa->stream);
   }

   if (pa->context)
   {
      pa_context_disconnect(pa->context);
      pa_context_unref(pa->context);
   }

   if (pa->mainloop)
      pa_threaded_mainloop_free(pa->mainloop);

   free(pa);
}
