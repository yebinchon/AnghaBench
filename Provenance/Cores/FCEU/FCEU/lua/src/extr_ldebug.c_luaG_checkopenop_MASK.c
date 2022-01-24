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
typedef  int /*<<< orphan*/  Instruction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  OP_CALL 131 
#define  OP_RETURN 130 
#define  OP_SETLIST 129 
#define  OP_TAILCALL 128 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3 (Instruction i) {
  switch (FUNC1(i)) {
    case OP_CALL:
    case OP_TAILCALL:
    case OP_RETURN:
    case OP_SETLIST: {
      FUNC2(FUNC0(i) == 0);
      return 1;
    }
    default: return 0;  /* invalid instruction after an open call */
  }
}