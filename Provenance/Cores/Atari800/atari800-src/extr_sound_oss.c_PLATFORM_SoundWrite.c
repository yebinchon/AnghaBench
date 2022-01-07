
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int dsp_fd ;
 int write (int ,int const*,unsigned int) ;

void PLATFORM_SoundWrite(UBYTE const *buffer, unsigned int size)
{
 int wsize = write(dsp_fd, buffer, size);
 if (wsize < size) {

 }
}
