#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int comments; char** user_comments; int* comment_lengths; } ;
typedef  TYPE_1__ vorbis_comment ;
typedef  int /*<<< orphan*/  oggpack_buffer ;

/* Variables and functions */
 char* ENCODE_VENDOR_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(oggpack_buffer *opb,vorbis_comment *vc){
  int bytes = FUNC2(ENCODE_VENDOR_STRING);

  /* preamble */
  FUNC1(opb,0x03,8);
  FUNC0(opb,"vorbis", 6);

  /* vendor */
  FUNC1(opb,bytes,32);
  FUNC0(opb,ENCODE_VENDOR_STRING, bytes);

  /* comments */

  FUNC1(opb,vc->comments,32);
  if(vc->comments){
    int i;
    for(i=0;i<vc->comments;i++){
      if(vc->user_comments[i]){
        FUNC1(opb,vc->comment_lengths[i],32);
        FUNC0(opb,vc->user_comments[i], vc->comment_lengths[i]);
      }else{
        FUNC1(opb,0,32);
      }
    }
  }
  FUNC1(opb,1,1);

  return(0);
}