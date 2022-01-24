#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vorbis_info ;
typedef  int /*<<< orphan*/  ogg_page ;
typedef  int /*<<< orphan*/  ogg_packet ;
typedef  scalar_t__ ogg_int64_t ;
struct TYPE_7__ {int serialno; } ;
struct TYPE_6__ {TYPE_2__ os; } ;
typedef  TYPE_1__ OggVorbis_File ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 long FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ogg_int64_t FUNC7(OggVorbis_File *vf, vorbis_info *vi){
  ogg_page    og;
  ogg_int64_t accumulated=0;
  long        lastblock=-1;
  int         result;
  int         serialno = vf->os.serialno;

  while(1){
    ogg_packet op;
    if(FUNC0(vf,&og,-1)<0)
      break; /* should not be possible unless the file is truncated/mangled */

    if(FUNC1(&og)) break;
    if(FUNC3(&og)!=serialno) continue;

    /* count blocksizes of all frames in the page */
    FUNC5(&vf->os,&og);
    while((result=FUNC4(&vf->os,&op))){
      if(result>0){ /* ignore holes */
        long thisblock=FUNC6(vi,&op);
        if(lastblock!=-1)
          accumulated+=(lastblock+thisblock)>>2;
        lastblock=thisblock;
      }
    }

    if(FUNC2(&og)!=-1){
      /* pcm offset of last packet on the first audio page */
      accumulated= FUNC2(&og)-accumulated;
      break;
    }
  }

  /* less than zero?  Either a corrupt file or a stream with samples
     trimmed off the beginning, a normal occurrence; in both cases set
     the offset to zero */
  if(accumulated<0)accumulated=0;

  return accumulated;
}