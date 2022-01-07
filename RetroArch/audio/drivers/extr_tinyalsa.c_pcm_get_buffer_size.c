
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm {unsigned int buffer_size; } ;



__attribute__((used)) static unsigned int pcm_get_buffer_size(const struct pcm *pcm)
{
   return pcm->buffer_size;
}
