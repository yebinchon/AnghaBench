#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__** packetblob; } ;
typedef  TYPE_1__ vorbis_block_internal ;
struct TYPE_9__ {TYPE_1__* localstore; TYPE_1__* internal; } ;
typedef  TYPE_2__ vorbis_block ;

/* Variables and functions */
 int PACKETBLOBS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int FUNC4(vorbis_block *vb){
  int i;
  vorbis_block_internal *vbi=vb->internal;

  FUNC1(vb);
  if(vb->localstore)FUNC0(vb->localstore);

  if(vbi){
    for(i=0;i<PACKETBLOBS;i++){
      FUNC3(vbi->packetblob[i]);
      if(i!=PACKETBLOBS/2)FUNC0(vbi->packetblob[i]);
    }
    FUNC0(vbi);
  }
  FUNC2(vb,0,sizeof(*vb));
  return(0);
}