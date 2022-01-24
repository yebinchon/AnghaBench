#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  TString ;
typedef  int StkId ;

/* Variables and functions */
 size_t LUAI_MAXSHORTLEN ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  TM_CONCAT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_1__*,int) ; 
 scalar_t__ FUNC13 (int) ; 
 size_t FUNC14 (int) ; 

void FUNC15 (lua_State *L, int total) {
  FUNC9(total >= 2);
  do {
    StkId top = L->top;
    int n = 2;  /* number of elements handled in this pass (at least 2) */
    if (!(FUNC13(top-2) || FUNC2(top-2)) || !FUNC12(L, top-1))
      FUNC8(L, top-2, top-1, top-2, TM_CONCAT);
    else if (FUNC4(top - 1))  /* second operand is empty? */
      FUNC0(FUNC12(L, top - 2));  /* result is first operand */
    else if (FUNC4(top - 2)) {  /* first operand is an empty string? */
      FUNC10(L, top - 2, top - 1);  /* result is second op. */
    }
    else {
      /* at least two non-empty string values; get as many as possible */
      size_t tl = FUNC14(top - 1);
      TString *ts;
      /* collect total length and number of strings */
      for (n = 1; n < total && FUNC12(L, top - n - 1); n++) {
        size_t l = FUNC14(top - n - 1);
        if (l >= (MAX_SIZE/sizeof(char)) - tl)
          FUNC5(L, "string length overflow");
        tl += l;
      }
      if (tl <= LUAI_MAXSHORTLEN) {  /* is result a short string? */
        char buff[LUAI_MAXSHORTLEN];
        FUNC1(top, n, buff);  /* copy strings to buffer */
        ts = FUNC7(L, buff, tl);
      }
      else {  /* long string; copy strings directly to final result */
        ts = FUNC6(L, tl);
        FUNC1(top, n, FUNC3(ts));
      }
      FUNC11(L, top - n, ts);  /* create result */
    }
    total -= n-1;  /* got 'n' strings to create 1 new */
    L->top -= n-1;  /* popped 'n' strings and pushed one */
  } while (total > 1);  /* repeat until only 1 result left */
}