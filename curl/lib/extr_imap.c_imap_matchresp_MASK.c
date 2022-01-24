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
 int FALSE ; 
 scalar_t__ FUNC0 (char const) ; 
 int TRUE ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t) ; 

__attribute__((used)) static bool FUNC3(const char *line, size_t len, const char *cmd)
{
  const char *end = line + len;
  size_t cmd_len = FUNC1(cmd);

  /* Skip the untagged response marker */
  line += 2;

  /* Do we have a number after the marker? */
  if(line < end && FUNC0(*line)) {
    /* Skip the number */
    do
      line++;
    while(line < end && FUNC0(*line));

    /* Do we have the space character? */
    if(line == end || *line != ' ')
      return FALSE;

    line++;
  }

  /* Does the command name match and is it followed by a space character or at
     the end of line? */
  if(line + cmd_len <= end && FUNC2(line, cmd, cmd_len) &&
     (line[cmd_len] == ' ' || line + cmd_len + 2 == end))
    return TRUE;

  return FALSE;
}