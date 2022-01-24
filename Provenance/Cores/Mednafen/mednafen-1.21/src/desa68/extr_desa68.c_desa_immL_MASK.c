#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int flags; unsigned int immsym_min; unsigned int immsym_max; } ;

/* Variables and functions */
 int DESA68_SYMBOL_FLAG ; 
 TYPE_1__ d ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

__attribute__((used)) static void FUNC6(int v)
{
  unsigned int v2 = v;
  FUNC1('#');
  if ((d.flags&DESA68_SYMBOL_FLAG) && v2>=d.immsym_min && v2<d.immsym_max) {
    FUNC3(v2);
    FUNC5(v2);
  } else {
    if(FUNC2(v2) && FUNC2(v2>>8) && FUNC2(v2>>16) && FUNC2(v2>>24)) {
      FUNC1 ('\'');
      FUNC0((u32)v2);
      FUNC1 ('\'');
    } else {
      FUNC4(v);
    }
  }
}