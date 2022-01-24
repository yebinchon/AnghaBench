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
struct TYPE_4__ {unsigned int maxbitlen; unsigned int numcodes; unsigned int* lengths; } ;
typedef  TYPE_1__ HuffmanTree ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 unsigned int FUNC1 (unsigned int*,unsigned int const*,size_t,unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static unsigned FUNC4(HuffmanTree* tree, const unsigned* frequencies,
                                                size_t mincodes, size_t numcodes, unsigned maxbitlen)
{
  unsigned error = 0;
  while(!frequencies[numcodes - 1] && numcodes > mincodes) numcodes--; /*trim zeroes*/
  tree->maxbitlen = maxbitlen;
  tree->numcodes = (unsigned)numcodes; /*number of symbols*/
  tree->lengths = (unsigned*)FUNC2(tree->lengths, numcodes * sizeof(unsigned));
  if(!tree->lengths) return 83; /*alloc fail*/
  /*initialize all lengths to 0*/
  FUNC3(tree->lengths, 0, numcodes * sizeof(unsigned));

  error = FUNC1(tree->lengths, frequencies, numcodes, maxbitlen);
  if(!error) error = FUNC0(tree);
  return error;
}