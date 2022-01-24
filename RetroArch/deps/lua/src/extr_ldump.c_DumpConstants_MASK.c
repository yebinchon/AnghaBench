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
struct TYPE_3__ {int sizek; int /*<<< orphan*/ * k; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ Proto ;
typedef  int /*<<< orphan*/  DumpState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  LUA_TBOOLEAN 133 
#define  LUA_TLNGSTR 132 
#define  LUA_TNIL 131 
#define  LUA_TNUMFLT 130 
#define  LUA_TNUMINT 129 
#define  LUA_TSHRSTR 128 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int FUNC10 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC11 (const Proto *f, DumpState *D) {
  int i;
  int n = f->sizek;
  FUNC1(n, D);
  for (i = 0; i < n; i++) {
    const TValue *o = &f->k[i];
    FUNC0(FUNC10(o), D);
    switch (FUNC10(o)) {
    case LUA_TNIL:
      break;
    case LUA_TBOOLEAN:
      FUNC0(FUNC5(o), D);
      break;
    case LUA_TNUMFLT:
      FUNC3(FUNC6(o), D);
      break;
    case LUA_TNUMINT:
      FUNC2(FUNC7(o), D);
      break;
    case LUA_TSHRSTR:
    case LUA_TLNGSTR:
      FUNC4(FUNC9(o), D);
      break;
    default:
      FUNC8(0);
    }
  }
}