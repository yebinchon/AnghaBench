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
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 char* FUNC3 (char const*) ; 
 size_t FUNC4 (char const*) ; 
 char* FUNC5 (char const*,char const*) ; 

char *FUNC6(const char *in,
      const char *pattern, const char *replacement)
{
   size_t numhits, pattern_len, replacement_len, outlen;
   const char *inat   = NULL;
   const char *inprev = NULL;
   char          *out = NULL;
   char        *outat = NULL;

   /* if either pattern or replacement is NULL,
    * duplicate in and let caller handle it. */
   if (!pattern || !replacement)
      return FUNC3(in);

   pattern_len     = FUNC4(pattern);
   replacement_len = FUNC4(replacement);
   numhits         = 0;
   inat            = in;

   while ((inat = FUNC5(inat, pattern)))
   {
      inat += pattern_len;
      numhits++;
   }

   outlen          = FUNC4(in) - pattern_len*numhits + replacement_len*numhits;
   out             = (char *)FUNC0(outlen+1);

   if (!out)
      return NULL;

   outat           = out;
   inat            = in;
   inprev          = in;

   while ((inat = FUNC5(inat, pattern)))
   {
      FUNC1(outat, inprev, inat-inprev);
      outat += inat-inprev;
      FUNC1(outat, replacement, replacement_len);
      outat += replacement_len;
      inat += pattern_len;
      inprev = inat;
   }
   FUNC2(outat, inprev);

   return out;
}