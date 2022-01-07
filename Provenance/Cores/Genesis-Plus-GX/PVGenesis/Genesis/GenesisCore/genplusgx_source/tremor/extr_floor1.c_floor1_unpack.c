
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int partitions; int* partitionclass; int* class_subs; scalar_t__* class_book; int** class_subbook; int* postlist; scalar_t__* class_dim; scalar_t__ mult; } ;
typedef TYPE_1__ vorbis_info_floor1 ;
typedef TYPE_1__ vorbis_info_floor ;
struct TYPE_9__ {scalar_t__ codec_setup; } ;
typedef TYPE_3__ vorbis_info ;
typedef int oggpack_buffer ;
struct TYPE_10__ {scalar_t__ books; } ;
typedef TYPE_4__ codec_setup_info ;


 scalar_t__ _ogg_calloc (int,int) ;
 int floor1_free_info (TYPE_1__*) ;
 void* oggpack_read (int *,int) ;

__attribute__((used)) static vorbis_info_floor *floor1_unpack (vorbis_info *vi,oggpack_buffer *opb){
  codec_setup_info *ci=(codec_setup_info *)vi->codec_setup;
  int j,k,count=0,maxclass=-1,rangebits;

  vorbis_info_floor1 *info=(vorbis_info_floor1 *)_ogg_calloc(1,sizeof(*info));

  info->partitions=oggpack_read(opb,5);
  for(j=0;j<info->partitions;j++){
    info->partitionclass[j]=oggpack_read(opb,4);
    if(maxclass<info->partitionclass[j])maxclass=info->partitionclass[j];
  }


  for(j=0;j<maxclass+1;j++){
    info->class_dim[j]=oggpack_read(opb,3)+1;
    info->class_subs[j]=oggpack_read(opb,2);
    if(info->class_subs[j]<0)
      goto err_out;
    if(info->class_subs[j])info->class_book[j]=oggpack_read(opb,8);
    if(info->class_book[j]<0 || info->class_book[j]>=ci->books)
      goto err_out;
    for(k=0;k<(1<<info->class_subs[j]);k++){
      info->class_subbook[j][k]=oggpack_read(opb,8)-1;
      if(info->class_subbook[j][k]<-1 || info->class_subbook[j][k]>=ci->books)
 goto err_out;
    }
  }


  info->mult=oggpack_read(opb,2)+1;
  rangebits=oggpack_read(opb,4);

  for(j=0,k=0;j<info->partitions;j++){
    count+=info->class_dim[info->partitionclass[j]];
    for(;k<count;k++){
      int t=info->postlist[k+2]=oggpack_read(opb,rangebits);
      if(t<0 || t>=(1<<rangebits))
 goto err_out;
    }
  }
  info->postlist[0]=0;
  info->postlist[1]=1<<rangebits;

  return(info);

 err_out:
  floor1_free_info(info);
  return(((void*)0));
}
