
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;



__attribute__((used)) static ssize_t null_audio_write(void *data, const void *buf, size_t size)
{
   (void)data;
   (void)buf;

   return size;
}
