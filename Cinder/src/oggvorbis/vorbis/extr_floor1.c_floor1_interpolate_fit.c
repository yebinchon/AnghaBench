
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long posts; } ;
typedef TYPE_1__ vorbis_look_floor1 ;
typedef int vorbis_block ;


 int* _vorbis_block_alloc (int *,int) ;

int *floor1_interpolate_fit(vorbis_block *vb,vorbis_look_floor1 *look,
                          int *A,int *B,
                          int del){

  long i;
  long posts=look->posts;
  int *output=((void*)0);

  if(A && B){
    output=_vorbis_block_alloc(vb,sizeof(*output)*posts);


    for(i=0;i<posts;i++){
      output[i]=((65536-del)*(A[i]&0x7fff)+del*(B[i]&0x7fff)+32768)>>16;
      if(A[i]&0x8000 && B[i]&0x8000)output[i]|=0x8000;
    }
  }

  return(output);
}
