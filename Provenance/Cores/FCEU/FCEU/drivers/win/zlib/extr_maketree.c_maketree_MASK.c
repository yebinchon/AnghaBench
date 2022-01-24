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
typedef  int uInt ;
struct TYPE_3__ {int exop; int bits; int base; } ;
typedef  TYPE_1__ inflate_huft ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC5(uInt b, inflate_huft *t)
{
  int i, e;

  i = 0;
  while (1)
  {
    e = t[i].exop;
    if (e && (e & (16+64)) == 0)        /* table pointer */
    {
      FUNC1(stderr, "maketree: cannot initialize sub-tables!\n");
      FUNC0(1);
    }
    if (i % 4 == 0)
      FUNC2("\n   ");
    FUNC2(" {{{%u,%u}},%u}", t[i].exop, t[i].bits, t[i].base);
    if (++i == (1<<b))
      break;
    FUNC3(',');
  }
  FUNC4("");
}