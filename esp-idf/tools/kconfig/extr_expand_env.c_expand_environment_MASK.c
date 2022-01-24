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
 int MAX_LEN ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,size_t) ; 

char *FUNC11(const char *input, const char *src_name, int src_line_no)
{
  char *result = FUNC6(MAX_LEN);

  char *out = result;
  const char *in = input;

  while (*in != '\0') {
    // check for buffer overflow
    if (out >= result + MAX_LEN - 1) {
      goto too_long;
    }

    if (*in != '$') {
      // not part of an environment variable name, copy directly
      *out++ = *in++;
      continue;
    }

    // *in points to start of an environment variable reference
    in++;
    const char *env_start = in;
    while (FUNC0(*in)) { // scan to the end of the name
      in++;
    }
    size_t env_len = in - env_start;

    // make a buffer to hold the environment variable name
    //
    // strndup is not available on mingw32, apparently.
    char *env_name = FUNC2(1, env_len + 1);
    FUNC1(env_name != NULL);
    FUNC10(env_name, env_start, env_len);

    const char *value = FUNC5(env_name);
    if (value == NULL || FUNC9(value) == 0) {
      FUNC7("%s:%d: undefined environment variable \"%s\"\n",
             src_name, src_line_no, env_name);
      FUNC3(1);
    }
    FUNC4(env_name);
    if (out + FUNC9(value) >= result + MAX_LEN - 1) {
      goto too_long;
    }
    FUNC8(out, value); // append the value to the result (range checked in previous statement)
    out += FUNC9(value);
  }

  *out = '\0'; // null terminate the result string

  return result;

too_long:
  FUNC7("%s:%d: Expansion is longer than %d bytes\n",
         src_name, src_line_no, MAX_LEN);
  FUNC4(result);
  FUNC3(1);
}