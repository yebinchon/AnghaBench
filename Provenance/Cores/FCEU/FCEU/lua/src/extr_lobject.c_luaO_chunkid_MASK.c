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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 size_t FUNC2 (char const*,char*) ; 
 size_t FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 

void FUNC6 (char *out, const char *source, size_t bufflen) {
  if (*source == '=') {
    FUNC5(out, source+1, bufflen);  /* remove first char */
    out[bufflen-1] = '\0';  /* ensures null termination */
  }
  else {  /* out = "source", or "...source" */
    if (*source == '@') {
      size_t l;
      source++;  /* skip the `@' */
      bufflen -= sizeof(" '...' ");
      l = FUNC3(source);
      FUNC1(out, "");
      if (l > bufflen) {
        source += (l-bufflen);  /* get last part of file name */
        FUNC0(out, "...");
      }
      FUNC0(out, source);
    }
    else {  /* out = [string "string"] */
      size_t len = FUNC2(source, "\n\r");  /* stop at first newline */
      bufflen -= sizeof(" [string \"...\"] ");
      if (len > bufflen) len = bufflen;
      FUNC1(out, "[string \"");
      if (source[len] != '\0') {  /* must truncate? */
        FUNC4(out, source, len);
        FUNC0(out, "...");
      }
      else
        FUNC0(out, source);
      FUNC0(out, "\"]");
    }
  }
}