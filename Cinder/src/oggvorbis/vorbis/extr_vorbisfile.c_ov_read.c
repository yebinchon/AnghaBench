
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OggVorbis_File ;


 long ov_read_filter (int *,char*,int,int,int,int,int*,int *,int *) ;

long ov_read(OggVorbis_File *vf,char *buffer,int length,
             int bigendianp,int word,int sgned,int *bitstream){
  return ov_read_filter(vf, buffer, length, bigendianp, word, sgned, bitstream, ((void*)0), ((void*)0));
}
