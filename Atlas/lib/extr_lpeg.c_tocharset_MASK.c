#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  enum charsetanswer { ____Placeholder_charsetanswer } charsetanswer ;
struct TYPE_12__ {int tag; int /*<<< orphan*/  cs; } ;
struct TYPE_10__ {scalar_t__ code; } ;
struct TYPE_11__ {TYPE_1__ i; } ;
typedef  TYPE_2__ Instruction ;
typedef  TYPE_3__ CharsetTag ;

/* Variables and functions */
 scalar_t__ IEnd ; 
 int ISCHARSET ; 
 int NOINFO ; 
 int VALIDSTARTS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static enum charsetanswer FUNC4 (Instruction *p, CharsetTag *c) {
  if (FUNC1(p)) {
    FUNC0(p, c->cs);
    if ((p + FUNC3(p))->i.code == IEnd && FUNC2(p) == 1)
      c->tag = ISCHARSET;
    else
      c->tag = VALIDSTARTS;
  }
  else
    c->tag = NOINFO;
  return c->tag;
}