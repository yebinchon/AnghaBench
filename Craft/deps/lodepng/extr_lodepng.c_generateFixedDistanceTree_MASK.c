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
typedef  int /*<<< orphan*/  HuffmanTree ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *,unsigned int*,int,int) ; 
 int NUM_DISTANCE_SYMBOLS ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static unsigned FUNC3(HuffmanTree* tree)
{
  unsigned i, error = 0;
  unsigned* bitlen = (unsigned*)FUNC2(NUM_DISTANCE_SYMBOLS * sizeof(unsigned));
  if(!bitlen) return 83; /*alloc fail*/

  /*there are 32 distance codes, but 30-31 are unused*/
  for(i = 0; i < NUM_DISTANCE_SYMBOLS; i++) bitlen[i] = 5;
  error = FUNC0(tree, bitlen, NUM_DISTANCE_SYMBOLS, 15);

  FUNC1(bitlen);
  return error;
}