#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  luaL_Buffer ;
struct TYPE_4__ {int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ MatchState ;

/* Variables and functions */
 char const L_ESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const) ; 

__attribute__((used)) static void FUNC7 (MatchState *ms, luaL_Buffer *b, const char *s,
                                                   const char *e) {
  size_t l, i;
  const char *news = FUNC4(ms->L, 3, &l);
  for (i = 0; i < l; i++) {
    if (news[i] != L_ESC)
      FUNC1(b, news[i]);
    else {
      i++;  /* skip ESC */
      if (!FUNC0(FUNC6(news[i])))
        FUNC1(b, news[i]);
      else if (news[i] == '0')
          FUNC2(b, s, e - s);
      else {
        FUNC5(ms, news[i] - '1', s, e);
        FUNC3(b);  /* add capture to accumulated result */
      }
    }
  }
}