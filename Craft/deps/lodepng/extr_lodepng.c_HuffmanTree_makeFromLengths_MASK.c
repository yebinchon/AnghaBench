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
struct TYPE_4__ {unsigned int* lengths; unsigned int numcodes; unsigned int maxbitlen; } ;
typedef  TYPE_1__ HuffmanTree ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (size_t) ; 

__attribute__((used)) static unsigned FUNC2(HuffmanTree* tree, const unsigned* bitlen,
                                            size_t numcodes, unsigned maxbitlen)
{
  unsigned i;
  tree->lengths = (unsigned*)FUNC1(numcodes * sizeof(unsigned));
  if(!tree->lengths) return 83; /*alloc fail*/
  for(i = 0; i < numcodes; i++) tree->lengths[i] = bitlen[i];
  tree->numcodes = (unsigned)numcodes; /*number of symbols*/
  tree->maxbitlen = maxbitlen;
  return FUNC0(tree);
}