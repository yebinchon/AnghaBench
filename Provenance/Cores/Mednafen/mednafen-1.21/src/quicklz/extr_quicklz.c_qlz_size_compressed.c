
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int fast_read (char const*,unsigned int) ;

size_t qlz_size_compressed(const char *source)
{
 unsigned int n, r;
 n = (((*source) & 2) == 2) ? 4 : 1;
 r = fast_read(source + 1, n);
 r = r & (0xffffffff >> ((4 - n)*8));
 return r;
}
