#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int submaps; int coupling_steps; int* coupling_mag; int* coupling_ang; int* chmuxlist; int* floorsubmap; int* residuesubmap; } ;
typedef  TYPE_1__ vorbis_info_mapping0 ;
typedef  TYPE_1__ vorbis_info_mapping ;
struct TYPE_11__ {int channels; TYPE_4__* codec_setup; } ;
typedef  TYPE_3__ vorbis_info ;
typedef  int /*<<< orphan*/  oggpack_buffer ;
struct TYPE_12__ {int floors; int residues; } ;
typedef  TYPE_4__ codec_setup_info ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static vorbis_info_mapping *FUNC5(vorbis_info *vi,oggpack_buffer *opb){
  int i,b;
  vorbis_info_mapping0 *info=FUNC0(1,sizeof(*info));
  codec_setup_info     *ci=vi->codec_setup;
  FUNC3(info,0,sizeof(*info));

  b=FUNC4(opb,1);
  if(b<0)goto err_out;
  if(b){
    info->submaps=FUNC4(opb,4)+1;
    if(info->submaps<=0)goto err_out;
  }else
    info->submaps=1;

  b=FUNC4(opb,1);
  if(b<0)goto err_out;
  if(b){
    info->coupling_steps=FUNC4(opb,8)+1;
    if(info->coupling_steps<=0)goto err_out;
    for(i=0;i<info->coupling_steps;i++){
      int testM=info->coupling_mag[i]=FUNC4(opb,FUNC1(vi->channels));
      int testA=info->coupling_ang[i]=FUNC4(opb,FUNC1(vi->channels));

      if(testM<0 ||
         testA<0 ||
         testM==testA ||
         testM>=vi->channels ||
         testA>=vi->channels) goto err_out;
    }

  }

  if(FUNC4(opb,2)!=0)goto err_out; /* 2,3:reserved */

  if(info->submaps>1){
    for(i=0;i<vi->channels;i++){
      info->chmuxlist[i]=FUNC4(opb,4);
      if(info->chmuxlist[i]>=info->submaps || info->chmuxlist[i]<0)goto err_out;
    }
  }
  for(i=0;i<info->submaps;i++){
    FUNC4(opb,8); /* time submap unused */
    info->floorsubmap[i]=FUNC4(opb,8);
    if(info->floorsubmap[i]>=ci->floors || info->floorsubmap[i]<0)goto err_out;
    info->residuesubmap[i]=FUNC4(opb,8);
    if(info->residuesubmap[i]>=ci->residues || info->residuesubmap[i]<0)goto err_out;
  }

  return info;

 err_out:
  FUNC2(info);
  return(NULL);
}