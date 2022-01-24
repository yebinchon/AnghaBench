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

/* Variables and functions */
 int FUNC0 (char const*) ; 

__attribute__((used)) static const char *FUNC1(const char *path)
{
  const char *ext;
  if (FUNC0(path) < 4)
    return ""; // no ext

  // allow 2 or 3 char extensions for now
  ext = path + FUNC0(path) - 2;
  if (ext[-1] != '.') ext--;
  if (ext[-1] != '.')
    return "";
  return ext;
}