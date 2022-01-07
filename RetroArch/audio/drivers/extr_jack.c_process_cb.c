
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cond; int * buffer; int * ports; } ;
typedef TYPE_1__ jack_t ;
typedef int jack_nframes_t ;
typedef float jack_default_audio_sample_t ;


 scalar_t__ jack_port_get_buffer (int ,int) ;
 int jack_ringbuffer_read (int ,char*,int) ;
 int jack_ringbuffer_read_space (int ) ;
 int scond_signal (int ) ;

__attribute__((used)) static int process_cb(jack_nframes_t nframes, void *data)
{
   int i;
   jack_nframes_t avail[2], min_avail;
   jack_t *jd = (jack_t*)data;

   if (nframes <= 0)
   {



      return 0;
   }

   avail[0] = jack_ringbuffer_read_space(jd->buffer[0]);
   avail[1] = jack_ringbuffer_read_space(jd->buffer[1]);
   min_avail = ((avail[0] < avail[1]) ? avail[0] : avail[1]) / sizeof(jack_default_audio_sample_t);

   if (min_avail > nframes)
      min_avail = nframes;

   for (i = 0; i < 2; i++)
   {
      jack_nframes_t f;
      jack_default_audio_sample_t *out = (jack_default_audio_sample_t*)jack_port_get_buffer(jd->ports[i], nframes);

      jack_ringbuffer_read(jd->buffer[i], (char*)out, min_avail * sizeof(jack_default_audio_sample_t));

      for (f = min_avail; f < nframes; f++)
         out[f] = 0.0f;
   }



   return 0;
}
