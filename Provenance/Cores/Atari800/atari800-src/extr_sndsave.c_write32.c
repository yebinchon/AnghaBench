
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputc (long,int ) ;
 int sndoutput ;

__attribute__((used)) static void write32(long x)
{
 fputc(x & 0xff, sndoutput);
 fputc((x >> 8) & 0xff, sndoutput);
 fputc((x >> 16) & 0xff, sndoutput);
 fputc((x >> 24) & 0xff, sndoutput);
}
