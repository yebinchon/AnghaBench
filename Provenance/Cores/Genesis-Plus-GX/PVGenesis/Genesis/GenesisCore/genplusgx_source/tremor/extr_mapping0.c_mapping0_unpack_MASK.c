#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int submaps; int coupling_steps; int* coupling_mag; int* coupling_ang; int* chmuxlist; int* floorsubmap; int* residuesubmap; } ;
typedef  TYPE_1__ vorbis_info_mapping0 ;
typedef  TYPE_1__ vorbis_info_mapping ;
struct TYPE_10__ {int channels; scalar_t__ codec_setup; } ;
typedef  TYPE_3__ vorbis_info ;
typedef  int /*<<< orphan*/  oggpack_buffer ;
struct TYPE_11__ {int times; int floors; int residues; } ;
typedef  TYPE_4__ codec_setup_info ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static vorbis_info_mapping *FUNC5(vorbis_info *vi,oggpack_buffer *opb){
  int i;
  vorbis_info_mapping0 *info=(vorbis_info_mapping0 *)FUNC0(1,sizeof(*info));
  codec_setup_info     *ci=(codec_setup_info *)vi->codec_setup;
  FUNC3(info,0,sizeof(*info));

  if(FUNC4(opb,1))
    info->submaps=FUNC4(opb,4)+1;
  else
    info->submaps=1;

  if(FUNC4(opb,1)){
    info->coupling_steps=FUNC4(opb,8)+1;

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

  if(FUNC4(opb,2)>0)goto err_out; /* 2,3:reserved */
    
  if(info->submaps>1){
    for(i=0;i<vi->channels;i++){
      info->chmuxlist[i]=FUNC4(opb,4);
      if(info->chmuxlist[i]>=info->submaps)goto err_out;
    }
  }
  for(i=0;i<info->submaps;i++){
    int temp=FUNC4(opb,8);
    if(temp>=ci->times)goto err_out;
    info->floorsubmap[i]=FUNC4(opb,8);
    if(info->floorsubmap[i]>=ci->floors)goto err_out;
    info->residuesubmap[i]=FUNC4(opb,8);
    if(info->residuesubmap[i]>=ci->residues)goto err_out;
  }

  return info;

 err_out:
  FUNC2(info);
  return(NULL);
}