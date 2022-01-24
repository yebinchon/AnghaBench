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
typedef  enum OpArgMask { ____Placeholder_OpArgMask } OpArgMask ;
struct TYPE_4__ {int maxstacksize; int /*<<< orphan*/  sizek; } ;
typedef  TYPE_1__ Proto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  OpArgK 131 
#define  OpArgN 130 
#define  OpArgR 129 
#define  OpArgU 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,int) ; 

__attribute__((used)) static int FUNC4 (const Proto *pt, int r, enum OpArgMask mode) {
  switch (mode) {
    case OpArgN: FUNC2(r == 0); break;
    case OpArgU: break;
    case OpArgR: FUNC3(pt, r); break;
    case OpArgK:
      FUNC2(FUNC1(r) ? FUNC0(r) < pt->sizek : r < pt->maxstacksize);
      break;
  }
  return 1;
}