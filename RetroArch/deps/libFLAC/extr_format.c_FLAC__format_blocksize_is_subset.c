
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__bool ;



FLAC__bool FLAC__format_blocksize_is_subset(unsigned blocksize, unsigned sample_rate)
{
 if(blocksize > 16384)
  return 0;
 else if(sample_rate <= 48000 && blocksize > 4608)
  return 0;
 else
  return 1;
}
