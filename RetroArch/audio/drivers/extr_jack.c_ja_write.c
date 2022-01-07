
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int jack_t ;


 int write_buffer (int *,float const*,size_t) ;

__attribute__((used)) static ssize_t ja_write(void *data, const void *buf, size_t size)
{
   jack_t *jd = (jack_t*)data;

   return write_buffer(jd, (const float*)buf, size);
}
