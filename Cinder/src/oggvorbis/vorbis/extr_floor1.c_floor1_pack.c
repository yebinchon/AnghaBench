
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* postlist; int partitions; int* partitionclass; int* class_dim; int* class_subs; int* class_book; int** class_subbook; int mult; } ;
typedef TYPE_1__ vorbis_info_floor1 ;
typedef int vorbis_info_floor ;
typedef int oggpack_buffer ;


 int ilog2 (int) ;
 int oggpack_write (int *,int,int) ;

__attribute__((used)) static void floor1_pack (vorbis_info_floor *i,oggpack_buffer *opb){
  vorbis_info_floor1 *info=(vorbis_info_floor1 *)i;
  int j,k;
  int count=0;
  int rangebits;
  int maxposit=info->postlist[1];
  int maxclass=-1;


  oggpack_write(opb,info->partitions,5);
  for(j=0;j<info->partitions;j++){
    oggpack_write(opb,info->partitionclass[j],4);
    if(maxclass<info->partitionclass[j])maxclass=info->partitionclass[j];
  }


  for(j=0;j<maxclass+1;j++){
    oggpack_write(opb,info->class_dim[j]-1,3);
    oggpack_write(opb,info->class_subs[j],2);
    if(info->class_subs[j])oggpack_write(opb,info->class_book[j],8);
    for(k=0;k<(1<<info->class_subs[j]);k++)
      oggpack_write(opb,info->class_subbook[j][k]+1,8);
  }


  oggpack_write(opb,info->mult-1,2);
  oggpack_write(opb,ilog2(maxposit),4);
  rangebits=ilog2(maxposit);

  for(j=0,k=0;j<info->partitions;j++){
    count+=info->class_dim[info->partitionclass[j]];
    for(;k<count;k++)
      oggpack_write(opb,info->postlist[k+2],rangebits);
  }
}
