#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int begin; int end; int grouping; int partitions; int groupbook; int* secondstages; int* booklist; } ;
typedef  TYPE_1__ vorbis_info_residue0 ;
typedef  int /*<<< orphan*/  vorbis_info_residue ;
typedef  int /*<<< orphan*/  oggpack_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

void FUNC3(vorbis_info_residue *vr,oggpack_buffer *opb){
  vorbis_info_residue0 *info=(vorbis_info_residue0 *)vr;
  int j,acc=0;
  FUNC2(opb,info->begin,24);
  FUNC2(opb,info->end,24);

  FUNC2(opb,info->grouping-1,24);  /* residue vectors to group and
                                             code with a partitioned book */
  FUNC2(opb,info->partitions-1,6); /* possible partition choices */
  FUNC2(opb,info->groupbook,8);  /* group huffman book */

  /* secondstages is a bitmask; as encoding progresses pass by pass, a
     bitmask of one indicates this partition class has bits to write
     this pass */
  for(j=0;j<info->partitions;j++){
    if(FUNC1(info->secondstages[j])>3){
      /* yes, this is a minor hack due to not thinking ahead */
      FUNC2(opb,info->secondstages[j],3);
      FUNC2(opb,1,1);
      FUNC2(opb,info->secondstages[j]>>3,5);
    }else
      FUNC2(opb,info->secondstages[j],4); /* trailing zero */
    acc+=FUNC0(info->secondstages[j]);
  }
  for(j=0;j<acc;j++)
    FUNC2(opb,info->booklist[j],8);

}