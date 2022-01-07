
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int begin; int end; int grouping; int partitions; int groupbook; int* secondstages; int* booklist; } ;
typedef TYPE_1__ vorbis_info_residue0 ;
typedef int vorbis_info_residue ;
typedef int oggpack_buffer ;


 scalar_t__ icount (int) ;
 int ilog (int) ;
 int oggpack_write (int *,int,int) ;

void res0_pack(vorbis_info_residue *vr,oggpack_buffer *opb){
  vorbis_info_residue0 *info=(vorbis_info_residue0 *)vr;
  int j,acc=0;
  oggpack_write(opb,info->begin,24);
  oggpack_write(opb,info->end,24);

  oggpack_write(opb,info->grouping-1,24);

  oggpack_write(opb,info->partitions-1,6);
  oggpack_write(opb,info->groupbook,8);




  for(j=0;j<info->partitions;j++){
    if(ilog(info->secondstages[j])>3){

      oggpack_write(opb,info->secondstages[j],3);
      oggpack_write(opb,1,1);
      oggpack_write(opb,info->secondstages[j]>>3,5);
    }else
      oggpack_write(opb,info->secondstages[j],4);
    acc+=icount(info->secondstages[j]);
  }
  for(j=0;j<acc;j++)
    oggpack_write(opb,info->booklist[j],8);

}
