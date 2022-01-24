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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(void)
{
  int errors = 0;
  char buf[256];
  FUNC0(buf, sizeof(buf), "%0*d%s", 2, 9, "foo");
  errors += FUNC2(buf, "09foo");

  FUNC0(buf, sizeof(buf), "%*.*s", 5, 2, "foo");
  errors += FUNC2(buf, "   fo");

  FUNC0(buf, sizeof(buf), "%*.*s", 2, 5, "foo");
  errors += FUNC2(buf, "foo");

  FUNC0(buf, sizeof(buf), "%*.*s", 0, 10, "foo");
  errors += FUNC2(buf, "foo");

  FUNC0(buf, sizeof(buf), "%-10s", "foo");
  errors += FUNC2(buf, "foo       ");

  FUNC0(buf, sizeof(buf), "%10s", "foo");
  errors += FUNC2(buf, "       foo");

  FUNC0(buf, sizeof(buf), "%*.*s", -10, -10, "foo");
  errors += FUNC2(buf, "foo       ");

  if(!errors)
    FUNC1("All curl_mprintf() strings tests OK!\n");
  else
    FUNC1("Some curl_mprintf() string tests Failed!\n");

  return errors;
}