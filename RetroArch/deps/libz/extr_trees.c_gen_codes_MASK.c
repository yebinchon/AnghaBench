#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ushf ;
typedef  int ush ;
struct TYPE_4__ {int Len; int /*<<< orphan*/  Code; } ;
typedef  TYPE_1__ ct_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MAX_BITS ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 
 TYPE_1__* static_ltree ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5 (ct_data *tree, int max_code, ushf *bl_count)
{
   ush next_code[MAX_BITS+1]; /* next code value for each bit length */
   ush codes = 0;              /* running code value */
   int bits;                  /* bit index */
   int n;                     /* code index */

   /* The distribution counts are first used to generate the code values
    * without bit reversal.
    */
   for (bits = 1; bits <= MAX_BITS; bits++) {
      next_code[bits] = codes = (codes + bl_count[bits-1]) << 1;
   }
   /* Check that the bit counts in bl_count are consistent. The last code
    * must be all ones.
    */
   FUNC0 (codes + bl_count[MAX_BITS]-1 == (1<<MAX_BITS)-1,
         "inconsistent bit counts");
   FUNC2((stderr,"\ngen_codes: max_code %d ", max_code));

   for (n = 0;  n <= max_code; n++) {
      int len = tree[n].Len;
      if (len == 0) continue;
      /* Now reverse the bits */
      tree[n].Code = FUNC3(next_code[len]++, len);

      FUNC1(tree != static_ltree, (stderr,"\nn %3d %c l %2d c %4x (%x) ",
               n, (FUNC4(n) ? n : ' '), len, tree[n].Code, next_code[len]-1));
   }
}