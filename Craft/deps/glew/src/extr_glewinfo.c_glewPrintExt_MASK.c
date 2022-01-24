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
typedef  scalar_t__ GLboolean ;

/* Variables and functions */
 int /*<<< orphan*/  f ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3 (const char* name, GLboolean def1, GLboolean def2, GLboolean def3)
{
  unsigned int i;
  FUNC1(f, "\n%s:", name);
  for (i=0; i<62-FUNC2(name); i++) FUNC1(f, " ");
  FUNC1(f, "%s ", def1 ? "OK" : "MISSING");
  if (def1 != def2)
    FUNC1(f, "[%s] ", def2 ? "OK" : "MISSING");
  if (def1 != def3)
    FUNC1(f, "[%s]\n", def3 ? "OK" : "MISSING");
  else
    FUNC1(f, "\n");
  for (i=0; i<FUNC2(name)+1; i++) FUNC1(f, "-");
  FUNC1(f, "\n");
  FUNC0(f);
}