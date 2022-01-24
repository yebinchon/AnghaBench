#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int submaps; int coupling_steps; int* coupling_mag; int* coupling_ang; int* chmuxlist; int* floorsubmap; int* residuesubmap; } ;
typedef  TYPE_1__ vorbis_info_mapping0 ;
typedef  int /*<<< orphan*/  vorbis_info_mapping ;
struct TYPE_5__ {int channels; } ;
typedef  TYPE_2__ vorbis_info ;
typedef  int /*<<< orphan*/  oggpack_buffer ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC2(vorbis_info *vi,vorbis_info_mapping *vm,
                          oggpack_buffer *opb){
  int i;
  vorbis_info_mapping0 *info=(vorbis_info_mapping0 *)vm;

  /* another 'we meant to do it this way' hack...  up to beta 4, we
     packed 4 binary zeros here to signify one submapping in use.  We
     now redefine that to mean four bitflags that indicate use of
     deeper features; bit0:submappings, bit1:coupling,
     bit2,3:reserved. This is backward compatable with all actual uses
     of the beta code. */

  if(info->submaps>1){
    FUNC1(opb,1,1);
    FUNC1(opb,info->submaps-1,4);
  }else
    FUNC1(opb,0,1);

  if(info->coupling_steps>0){
    FUNC1(opb,1,1);
    FUNC1(opb,info->coupling_steps-1,8);

    for(i=0;i<info->coupling_steps;i++){
      FUNC1(opb,info->coupling_mag[i],FUNC0(vi->channels));
      FUNC1(opb,info->coupling_ang[i],FUNC0(vi->channels));
    }
  }else
    FUNC1(opb,0,1);

  FUNC1(opb,0,2); /* 2,3:reserved */

  /* we don't write the channel submappings if we only have one... */
  if(info->submaps>1){
    for(i=0;i<vi->channels;i++)
      FUNC1(opb,info->chmuxlist[i],4);
  }
  for(i=0;i<info->submaps;i++){
    FUNC1(opb,0,8); /* time submap unused */
    FUNC1(opb,info->floorsubmap[i],8);
    FUNC1(opb,info->residuesubmap[i],8);
  }
}