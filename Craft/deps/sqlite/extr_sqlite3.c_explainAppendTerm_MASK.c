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
typedef  int /*<<< orphan*/  StrAccum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static void FUNC1(
  StrAccum *pStr,             /* The text expression being built */
  int iTerm,                  /* Index of this term.  First is zero */
  const char *zColumn,        /* Name of the column */
  const char *zOp             /* Name of the operator */
){
  if( iTerm ) FUNC0(pStr, " AND ", 5);
  FUNC0(pStr, zColumn, -1);
  FUNC0(pStr, zOp, 1);
  FUNC0(pStr, "?", 1);
}