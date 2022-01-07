
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__bool ;


 int FLAC__format_sample_rate_is_valid (unsigned int) ;

FLAC__bool FLAC__format_sample_rate_is_subset(unsigned sample_rate)
{
 if(
  !FLAC__format_sample_rate_is_valid(sample_rate) ||
  (
   sample_rate >= (1u << 16) &&
   !(sample_rate % 1000 == 0 || sample_rate % 10 == 0)
  )
 ) {
  return 0;
 }
 else
  return 1;
}
