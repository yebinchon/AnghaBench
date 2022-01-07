
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__BitReader ;


 scalar_t__ calloc (int,int) ;

FLAC__BitReader *FLAC__bitreader_new(void)
{
 FLAC__BitReader *br = (FLAC__BitReader*)calloc(1, sizeof(FLAC__BitReader));
 return br;
}
