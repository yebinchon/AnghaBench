#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vorbis_look_residue ;
typedef  int /*<<< orphan*/  vorbis_block ;
typedef  int /*<<< orphan*/  ogg_int32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vorbis_book_decodev_add ; 

int FUNC1(vorbis_block *vb,vorbis_look_residue *vl,
		 ogg_int32_t **in,int *nonzero,int ch){
  int i,used=0;
  for(i=0;i<ch;i++)
    if(nonzero[i])
      in[used++]=in[i];
  if(used)
    return(FUNC0(vb,vl,in,used,vorbis_book_decodev_add));
  else
    return(0);
}