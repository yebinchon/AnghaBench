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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 

__attribute__((used)) static void FUNC6(const char *sdp_filename,
                                        char *control)
{
  int max_len = 256;
  char *s = FUNC4(max_len);
  FILE *sdp_fp = FUNC2(sdp_filename, "rb");
  control[0] = '\0';
  if(sdp_fp != NULL) {
    while(FUNC1(s, max_len - 2, sdp_fp) != NULL) {
      FUNC5(s, " a = control: %s", control);
    }
    FUNC0(sdp_fp);
  }
  FUNC3(s);
}