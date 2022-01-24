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
struct TYPE_7__ {TYPE_1__* capture; } ;
struct TYPE_6__ {char const* len; int init; } ;
typedef  TYPE_2__ MatchState ;

/* Variables and functions */
 char const* CAP_UNFINISHED ; 
 int FUNC0 (TYPE_2__*) ; 
 char* FUNC1 (TYPE_2__*,char const*,char const*) ; 

__attribute__((used)) static const char *FUNC2 (MatchState *ms, const char *s,
                                  const char *p) {
  int l = FUNC0(ms);
  const char *res;
  ms->capture[l].len = s - ms->capture[l].init;  /* close capture */
  if ((res = FUNC1(ms, s, p)) == NULL)  /* match failed? */
    ms->capture[l].len = CAP_UNFINISHED;  /* undo capture */
  return res;
}