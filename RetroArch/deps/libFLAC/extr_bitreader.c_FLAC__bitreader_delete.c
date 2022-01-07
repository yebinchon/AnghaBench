
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__BitReader ;


 int FLAC__ASSERT (int) ;
 int FLAC__bitreader_free (int *) ;
 int free (int *) ;

void FLAC__bitreader_delete(FLAC__BitReader *br)
{
 FLAC__ASSERT(0 != br);

 FLAC__bitreader_free(br);
 free(br);
}
