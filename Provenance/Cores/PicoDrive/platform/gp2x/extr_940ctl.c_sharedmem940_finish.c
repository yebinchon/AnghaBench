
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MP3_SIZE_MAX ;
 int * mp3_mem ;
 int munmap (int *,int) ;
 int * shared_ctl ;
 int * shared_data ;
 int * shared_mem ;

void sharedmem940_finish(void)
{
 munmap(shared_mem, 0x210000);
 munmap(mp3_mem, MP3_SIZE_MAX);
 shared_mem = mp3_mem = ((void*)0);
 shared_data = ((void*)0);
 shared_ctl = ((void*)0);
}
