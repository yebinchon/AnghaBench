
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int submaps; int coupling_steps; int* coupling_mag; int* coupling_ang; int* chmuxlist; int* floorsubmap; int* residuesubmap; } ;
typedef TYPE_1__ vorbis_info_mapping0 ;
typedef TYPE_1__ vorbis_info_mapping ;
struct TYPE_10__ {int channels; scalar_t__ codec_setup; } ;
typedef TYPE_3__ vorbis_info ;
typedef int oggpack_buffer ;
struct TYPE_11__ {int times; int floors; int residues; } ;
typedef TYPE_4__ codec_setup_info ;


 scalar_t__ _ogg_calloc (int,int) ;
 int ilog (int) ;
 int mapping0_free_info (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int oggpack_read (int *,int) ;

__attribute__((used)) static vorbis_info_mapping *mapping0_unpack(vorbis_info *vi,oggpack_buffer *opb){
  int i;
  vorbis_info_mapping0 *info=(vorbis_info_mapping0 *)_ogg_calloc(1,sizeof(*info));
  codec_setup_info *ci=(codec_setup_info *)vi->codec_setup;
  memset(info,0,sizeof(*info));

  if(oggpack_read(opb,1))
    info->submaps=oggpack_read(opb,4)+1;
  else
    info->submaps=1;

  if(oggpack_read(opb,1)){
    info->coupling_steps=oggpack_read(opb,8)+1;

    for(i=0;i<info->coupling_steps;i++){
      int testM=info->coupling_mag[i]=oggpack_read(opb,ilog(vi->channels));
      int testA=info->coupling_ang[i]=oggpack_read(opb,ilog(vi->channels));

      if(testM<0 ||
  testA<0 ||
  testM==testA ||
  testM>=vi->channels ||
  testA>=vi->channels) goto err_out;
    }

  }

  if(oggpack_read(opb,2)>0)goto err_out;

  if(info->submaps>1){
    for(i=0;i<vi->channels;i++){
      info->chmuxlist[i]=oggpack_read(opb,4);
      if(info->chmuxlist[i]>=info->submaps)goto err_out;
    }
  }
  for(i=0;i<info->submaps;i++){
    int temp=oggpack_read(opb,8);
    if(temp>=ci->times)goto err_out;
    info->floorsubmap[i]=oggpack_read(opb,8);
    if(info->floorsubmap[i]>=ci->floors)goto err_out;
    info->residuesubmap[i]=oggpack_read(opb,8);
    if(info->residuesubmap[i]>=ci->residues)goto err_out;
  }

  return info;

 err_out:
  mapping0_free_info(info);
  return(((void*)0));
}
