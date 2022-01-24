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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  Instruction ;

/* Variables and functions */
 int /*<<< orphan*/  Cclose ; 
 int /*<<< orphan*/  Cruntime ; 
 int /*<<< orphan*/  IChar ; 
 int /*<<< orphan*/  IChoice ; 
 int /*<<< orphan*/  ICloseRunTime ; 
 int /*<<< orphan*/  IFail ; 
 int /*<<< orphan*/  IFailTwice ; 
 int /*<<< orphan*/  IOpenCapture ; 
 int /*<<< orphan*/  ITestAny ; 
#define  LUA_TBOOLEAN 132 
#define  LUA_TFUNCTION 131 
#define  LUA_TNUMBER 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int UCHAR_MAX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int,int*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static Instruction *FUNC14 (lua_State *L, int idx, int *size) {
  Instruction *p;
  switch (FUNC7(L, idx)) {
    case LUA_TSTRING: {
      size_t i, len;
      const char *s = FUNC6(L, idx, &len);
      p = FUNC8(L, len);
      for (i = 0; i < len; i++)
        FUNC11(p + i, IChar, 0, (unsigned char)s[i]);
      FUNC3(L, idx);
      break;
    }
    case LUA_TNUMBER: {
      int n = FUNC5(L, idx);
      if (n == 0)  /* empty pattern? */
        p = FUNC8(L, 0);
      else if (n > 0)
        p = FUNC0(L, n, 0, NULL);
      else if (-n <= UCHAR_MAX) {
        p = FUNC8(L, 2);
        FUNC11(p, ITestAny, 2, -n);
        FUNC10(p + 1, IFail, 0);
      }
      else {
        int offset = 2;  /* space for ITestAny & IChoice */
        p = FUNC0(L, -n - UCHAR_MAX, 3, &offset);
        FUNC11(p, ITestAny, offset + 1, UCHAR_MAX);
        FUNC11(p + 1, IChoice, offset, UCHAR_MAX);
        FUNC10(p + offset, IFailTwice, 0);
      }
      FUNC3(L, idx);
      break;
    }
    case LUA_TBOOLEAN: {
      if (FUNC4(L, idx))  /* true? */
        p = FUNC8(L, 0);  /* empty pattern (always succeeds) */
      else {
        p = FUNC8(L, 1);
        FUNC10(p, IFail, 0);
      }
      FUNC3(L, idx);
      break;
    }
    case LUA_TTABLE: {
      p = FUNC2(L, idx);
      break;
    }
    case LUA_TFUNCTION: {
      p = FUNC8(L, 2);
      FUNC12(p, IOpenCapture, FUNC13(L, idx), Cruntime, 0);
      FUNC12(p + 1, ICloseRunTime, 0, Cclose, 0);
      FUNC3(L, idx);
      break;
    }
    default: {
      p = FUNC1(L, idx);
      break;
    }
  }
  if (size) *size = FUNC9(L, idx);
  return p;
}