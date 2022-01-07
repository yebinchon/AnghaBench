
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int RWebAudioWrite (void const*,size_t) ;

__attribute__((used)) static ssize_t rwebaudio_write(void *data, const void *buf, size_t size)
{
   (void)data;
   return RWebAudioWrite(buf, size);
}
