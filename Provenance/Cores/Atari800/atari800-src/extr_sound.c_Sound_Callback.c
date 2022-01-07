
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UBYTE ;
struct TYPE_2__ {int channels; int sample_size; } ;


 int FillBuffer (int *,unsigned int) ;
 int Log_print (char*,int,unsigned int) ;
 TYPE_1__ Sound_out ;
 int Util_time () ;
 int last_audio_write_time ;
 int sync_read_pos ;
 int sync_write_pos ;

void Sound_Callback(UBYTE *buffer, unsigned int size)
{





 FillBuffer(buffer, size);



}
