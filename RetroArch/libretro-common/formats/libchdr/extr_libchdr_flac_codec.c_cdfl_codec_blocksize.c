
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t cdfl_codec_blocksize(uint32_t bytes)
{


 uint32_t hunkbytes = bytes / 4;
 while (hunkbytes > 2048)
  hunkbytes /= 2;
 return hunkbytes;
}
