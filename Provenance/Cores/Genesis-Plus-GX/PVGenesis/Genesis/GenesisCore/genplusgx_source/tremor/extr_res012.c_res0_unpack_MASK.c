#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int begin; int end; int grouping; int partitions; int groupbook; int* secondstages; int* booklist; } ;
typedef  TYPE_1__ vorbis_info_residue0 ;
typedef  TYPE_1__ vorbis_info_residue ;
struct TYPE_9__ {scalar_t__ codec_setup; } ;
typedef  TYPE_3__ vorbis_info ;
typedef  int /*<<< orphan*/  oggpack_buffer ;
struct TYPE_10__ {int books; } ;
typedef  TYPE_4__ codec_setup_info ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

vorbis_info_residue *FUNC4(vorbis_info *vi,oggpack_buffer *opb){
  int j,acc=0;
  vorbis_info_residue0 *info=(vorbis_info_residue0 *)FUNC0(1,sizeof(*info));
  codec_setup_info     *ci=(codec_setup_info *)vi->codec_setup;

  info->begin=FUNC2(opb,24);
  info->end=FUNC2(opb,24);
  info->grouping=FUNC2(opb,24)+1;
  info->partitions=FUNC2(opb,6)+1;
  info->groupbook=FUNC2(opb,8);

  for(j=0;j<info->partitions;j++){
    int cascade=FUNC2(opb,3);
    if(FUNC2(opb,1))
      cascade|=(FUNC2(opb,5)<<3);
    info->secondstages[j]=cascade;

    acc+=FUNC1(cascade);
  }
  for(j=0;j<acc;j++)
    info->booklist[j]=FUNC2(opb,8);

  if(info->groupbook>=ci->books)goto errout;
  for(j=0;j<acc;j++)
    if(info->booklist[j]>=ci->books)goto errout;

  return(info);
 errout:
  FUNC3(info);
  return(NULL);
}