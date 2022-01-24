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
typedef  int /*<<< orphan*/  intfstream_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_FOUND_DISK_LABEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(intfstream_t *fd, char *serial)
{
  const char *system_name = NULL;

  /* Check if the system was not auto-detected. */
  if (FUNC5(fd, &system_name) < 0)
  {
    /* Attempt to read an ASCII serial, like Wii. */
    if (FUNC4(fd, serial))
    {
      /* ASCII serial (Wii) was detected. */
      FUNC0("%s '%s'\n", FUNC6(MSG_FOUND_DISK_LABEL), serial);
      return 0;
    }

    /* Any other non-system specific detection methods? */
    return 0;
  }

  if (FUNC7(system_name, "psp"))
  {
    if (FUNC3(fd, serial) == 0)
      return 0;
    FUNC0("%s '%s'\n", FUNC6(MSG_FOUND_DISK_LABEL), serial);
  }
  else if (FUNC7(system_name, "ps1"))
  {
    if (FUNC2(fd, serial) == 0)
      return 0;
    FUNC0("%s '%s'\n", FUNC6(MSG_FOUND_DISK_LABEL), serial);
  }
  else if (FUNC7(system_name, "gc"))
  {
    if (FUNC1(fd, serial) == 0)
      return 0;
    FUNC0("%s '%s'\n", FUNC6(MSG_FOUND_DISK_LABEL), serial);
  }
  else {
    return 0;
  }

  return 1;
}