
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UBYTE ;
struct TYPE_2__ {unsigned int channels; unsigned int sample_size; } ;


 int Log_print (char*,unsigned int,unsigned int) ;
 int MAX_FRAME_SIZE ;
 int POKEYSND_Process (int *,unsigned int) ;
 TYPE_1__ Sound_out ;
 int memcpy (int *,int *,unsigned int) ;
 int * sync_buffer ;
 unsigned int sync_buffer_size ;
 unsigned int sync_read_pos ;
 unsigned int sync_write_pos ;

__attribute__((used)) static void FillBuffer(UBYTE *buffer, unsigned int size)
{
 POKEYSND_Process(buffer, size / Sound_out.sample_size);

}
