
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OggVorbis_File ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int ov_open (int *,int *,int *,int ) ;

int ov_fopen(const char *path,OggVorbis_File *vf){
  int ret;
  FILE *f = fopen(path,"rb");
  if(!f) return -1;

  ret = ov_open(f,vf,((void*)0),0);
  if(ret) fclose(f);
  return ret;
}
