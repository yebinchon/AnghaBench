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
typedef  int /*<<< orphan*/  stbi__context ;

/* Variables and functions */
 int STBI__HDR_BUFLEN ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (char*,char**,int) ; 

__attribute__((used)) static int FUNC6(stbi__context *s, int *x, int *y, int *comp)
{
   char buffer[STBI__HDR_BUFLEN];
   char *token;
   int valid = 0;
   int dummy;

   if (!x) x = &dummy;
   if (!y) y = &dummy;
   if (!comp) comp = &dummy;

   if (FUNC1(s) == 0) {
       FUNC2( s );
       return 0;
   }

   for(;;) {
      token = FUNC0(s,buffer);
      if (token[0] == 0) break;
      if (FUNC3(token, "FORMAT=32-bit_rle_rgbe") == 0) valid = 1;
   }

   if (!valid) {
       FUNC2( s );
       return 0;
   }
   token = FUNC0(s,buffer);
   if (FUNC4(token, "-Y ", 3)) {
       FUNC2( s );
       return 0;
   }
   token += 3;
   *y = (int) FUNC5(token, &token, 10);
   while (*token == ' ') ++token;
   if (FUNC4(token, "+X ", 3)) {
       FUNC2( s );
       return 0;
   }
   token += 3;
   *x = (int) FUNC5(token, NULL, 10);
   *comp = 3;
   return 1;
}