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
struct TYPE_3__ {long comments; char** user_comments; } ;
typedef  TYPE_1__ vorbis_comment ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

char *FUNC5(vorbis_comment *vc, char *tag, int count){
  long i;
  int found = 0;
  int taglen = FUNC3(tag)+1; /* +1 for the = we append */
  char *fulltag = (char *)FUNC0(taglen+ 1);

  FUNC2(fulltag, tag);
  FUNC1(fulltag, "=");
  
  for(i=0;i<vc->comments;i++){
    if(!FUNC4(vc->user_comments[i], fulltag, taglen)){
      if(count == found)
	/* We return a pointer to the data, not a copy */
      	return vc->user_comments[i] + taglen;
      else
	found++;
    }
  }
  return NULL; /* didn't find anything */
}