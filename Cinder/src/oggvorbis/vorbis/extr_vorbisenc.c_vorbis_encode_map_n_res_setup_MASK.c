#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vorbis_residue_template ;
struct TYPE_11__ {int /*<<< orphan*/ * res; TYPE_2__* map; } ;
typedef  TYPE_1__ vorbis_mapping_template ;
struct TYPE_12__ {int submaps; int* residuesubmap; } ;
typedef  TYPE_2__ vorbis_info_mode ;
typedef  TYPE_2__ vorbis_info_mapping0 ;
struct TYPE_13__ {TYPE_5__* codec_setup; } ;
typedef  TYPE_4__ vorbis_info ;
struct TYPE_14__ {scalar_t__* blocksizes; int modes; int maps; void** map_param; scalar_t__* map_type; void** mode_param; } ;
typedef  TYPE_5__ codec_setup_info ;

/* Variables and functions */
 TYPE_2__* _mode_template ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,TYPE_2__ const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int,int,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC3(vorbis_info *vi,double s,
                                          const vorbis_mapping_template *maps){

  codec_setup_info *ci=vi->codec_setup;
  int i,j,is=s,modes=2;
  const vorbis_info_mapping0 *map=maps[is].map;
  const vorbis_info_mode *mode=_mode_template;
  const vorbis_residue_template *res=maps[is].res;

  if(ci->blocksizes[0]==ci->blocksizes[1])modes=1;

  for(i=0;i<modes;i++){

    ci->map_param[i]=FUNC0(1,sizeof(*map));
    ci->mode_param[i]=FUNC0(1,sizeof(*mode));

    FUNC1(ci->mode_param[i],mode+i,sizeof(*_mode_template));
    if(i>=ci->modes)ci->modes=i+1;

    ci->map_type[i]=0;
    FUNC1(ci->map_param[i],map+i,sizeof(*map));
    if(i>=ci->maps)ci->maps=i+1;

    for(j=0;j<map[i].submaps;j++)
      FUNC2(vi,map[i].residuesubmap[j],i
                                  ,res+map[i].residuesubmap[j]);
  }
}