
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__bool ;


 unsigned int FLAC__MAX_SAMPLE_RATE ;

FLAC__bool FLAC__format_sample_rate_is_valid(unsigned sample_rate)
{
 if(sample_rate == 0 || sample_rate > FLAC__MAX_SAMPLE_RATE) {
  return 0;
 }
 else
  return 1;
}
