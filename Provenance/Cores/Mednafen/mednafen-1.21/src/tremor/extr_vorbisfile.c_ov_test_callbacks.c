
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ov_callbacks ;
typedef int OggVorbis_File ;


 int _ov_open1 (void*,int *,char const*,long,int ) ;

int ov_test_callbacks(void *f,OggVorbis_File *vf,
    const char *initial,long ibytes,ov_callbacks callbacks)
{
  return _ov_open1(f,vf,initial,ibytes,callbacks);
}
