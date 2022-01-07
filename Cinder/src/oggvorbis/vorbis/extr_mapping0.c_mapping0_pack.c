
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int submaps; int coupling_steps; int* coupling_mag; int* coupling_ang; int* chmuxlist; int* floorsubmap; int* residuesubmap; } ;
typedef TYPE_1__ vorbis_info_mapping0 ;
typedef int vorbis_info_mapping ;
struct TYPE_5__ {int channels; } ;
typedef TYPE_2__ vorbis_info ;
typedef int oggpack_buffer ;


 int ilog (int) ;
 int oggpack_write (int *,int,int) ;

__attribute__((used)) static void mapping0_pack(vorbis_info *vi,vorbis_info_mapping *vm,
                          oggpack_buffer *opb){
  int i;
  vorbis_info_mapping0 *info=(vorbis_info_mapping0 *)vm;
  if(info->submaps>1){
    oggpack_write(opb,1,1);
    oggpack_write(opb,info->submaps-1,4);
  }else
    oggpack_write(opb,0,1);

  if(info->coupling_steps>0){
    oggpack_write(opb,1,1);
    oggpack_write(opb,info->coupling_steps-1,8);

    for(i=0;i<info->coupling_steps;i++){
      oggpack_write(opb,info->coupling_mag[i],ilog(vi->channels));
      oggpack_write(opb,info->coupling_ang[i],ilog(vi->channels));
    }
  }else
    oggpack_write(opb,0,1);

  oggpack_write(opb,0,2);


  if(info->submaps>1){
    for(i=0;i<vi->channels;i++)
      oggpack_write(opb,info->chmuxlist[i],4);
  }
  for(i=0;i<info->submaps;i++){
    oggpack_write(opb,0,8);
    oggpack_write(opb,info->floorsubmap[i],8);
    oggpack_write(opb,info->residuesubmap[i],8);
  }
}
