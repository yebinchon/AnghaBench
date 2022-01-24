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
struct TYPE_3__ {int comments; int /*<<< orphan*/ ** user_comments; int /*<<< orphan*/ ** comment_lengths; } ;
typedef  TYPE_1__ vorbis_comment ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

void FUNC4(vorbis_comment *vc,const char *comment){
  vc->user_comments=FUNC1(vc->user_comments,
                            (vc->comments+2)*sizeof(*vc->user_comments));
  vc->comment_lengths=FUNC1(vc->comment_lengths,
                                  (vc->comments+2)*sizeof(*vc->comment_lengths));
  vc->comment_lengths[vc->comments]=FUNC3(comment);
  vc->user_comments[vc->comments]=FUNC0(vc->comment_lengths[vc->comments]+1);
  FUNC2(vc->user_comments[vc->comments], comment);
  vc->comments++;
  vc->user_comments[vc->comments]=NULL;
}