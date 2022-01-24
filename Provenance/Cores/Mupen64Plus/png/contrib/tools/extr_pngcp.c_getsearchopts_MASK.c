#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct display {int* value; } ;
typedef  size_t png_byte ;
struct TYPE_2__ {int search; } ;

/* Variables and functions */
 int MAX_MEM_LEVEL ; 
 size_t const FUNC0 (struct display*,int /*<<< orphan*/ ) ; 
 int Z_HUFFMAN_ONLY ; 
 int Z_RLE ; 
 scalar_t__ FUNC1 (struct display*,size_t const,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct display*,size_t const,int*,int) ; 
 int /*<<< orphan*/  level ; 
 int /*<<< orphan*/  memLevel ; 
 size_t FUNC4 (struct display*,char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* options ; 
 char* range_lo ; 
 int /*<<< orphan*/  FUNC5 (struct display*,size_t const,char const*) ; 
 int /*<<< orphan*/  strategy ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  windowBits ; 

__attribute__((used)) static int
FUNC7(struct display *dp, const char *opt_str, int *value)
   /* As above except that if the option was not set try a search */
{
   png_byte istrat;
   const png_byte opt = FUNC4(dp, opt_str, FUNC6(opt_str));
   int record = options[opt].search;
   const char *entry_name;

   /* If it was set on the command line honour the setting, including 'all'
    * which will override the built in search:
    */
   if (FUNC3(dp, opt, value, record))
      return 1;

   else if (!record) /* not a search option */
      return 0; /* unset and not searched */

   /* Otherwise decide what to do here. */
   istrat = FUNC0(dp, strategy);
   entry_name = range_lo; /* record the value, not the name */

   if (opt == istrat) /* search all strategies */
      (void)FUNC1(dp, opt, 0/*iterate*/), record=0;

   else if (opt == FUNC0(dp, level))
   {
      /* Both RLE and HUFFMAN don't benefit from level increases */
      if (dp->value[istrat] == Z_RLE || dp->value[istrat] == Z_HUFFMAN_ONLY)
         dp->value[opt] = 1;

      else /* fixed, filtered or default */
         (void)FUNC1(dp, opt, 1/*search*/), record=0;
   }

   else if (opt == FUNC0(dp, windowBits))
   {
      /* Changing windowBits for strategies that do not search the window is
       * pointless.  Huffman-only does not search, RLE only searches backwards
       * one byte, so given that the maximum string length is 258, a windowBits
       * of 9 is always sufficient.
       */
      if (dp->value[istrat] == Z_HUFFMAN_ONLY)
         dp->value[opt] = 8;

      else if (dp->value[istrat] == Z_RLE)
         dp->value[opt] = 9;

      else /* fixed, filtered or default */
         (void)FUNC1(dp, opt, 1/*search*/), record=0;
   }

   else if (opt == FUNC0(dp, memLevel))
   {
#     if 0
         (void)advance_opt(dp, opt, 0/*all*/), record=0;
#     else
         dp->value[opt] = MAX_MEM_LEVEL;
#     endif
   }

   else /* something else */
      FUNC2(0=="reached");

   if (record)
      FUNC5(dp, opt, entry_name);

   /* One of the above searched options: */
   *value = dp->value[opt];
   return 1;
}