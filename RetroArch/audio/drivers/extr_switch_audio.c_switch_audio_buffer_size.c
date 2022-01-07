
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t sample_buffer_size ;
 int switch_audio_data_size () ;

__attribute__((used)) static size_t switch_audio_buffer_size(void *data)
{
   (void) data;



   return sample_buffer_size;

}
