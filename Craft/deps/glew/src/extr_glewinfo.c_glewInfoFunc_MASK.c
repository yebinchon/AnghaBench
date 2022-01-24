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
typedef  scalar_t__ GLint ;

/* Variables and functions */
 int /*<<< orphan*/  f ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3 (const char* name, GLint undefined)
{
  unsigned int i;
  FUNC1(f, "  %s:", name);
  for (i=0; i<60-FUNC2(name); i++) FUNC1(f, " ");
  FUNC1(f, "%s\n", undefined ? "MISSING" : "OK");
  FUNC0(f);
}