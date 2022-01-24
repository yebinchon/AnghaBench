#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int* data; } ;
typedef  TYPE_1__ uivector ;
struct TYPE_9__ {unsigned int* tree1d; int numcodes; int maxbitlen; size_t* lengths; } ;
typedef  TYPE_2__ HuffmanTree ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC5(HuffmanTree* tree)
{
  uivector blcount;
  uivector nextcode;
  unsigned bits, n, error = 0;

  FUNC3(&blcount);
  FUNC3(&nextcode);

  tree->tree1d = (unsigned*)FUNC1(tree->numcodes * sizeof(unsigned));
  if(!tree->tree1d) error = 83; /*alloc fail*/

  if(!FUNC4(&blcount, tree->maxbitlen + 1, 0)
  || !FUNC4(&nextcode, tree->maxbitlen + 1, 0))
    error = 83; /*alloc fail*/

  if(!error)
  {
    /*step 1: count number of instances of each code length*/
    for(bits = 0; bits < tree->numcodes; bits++) blcount.data[tree->lengths[bits]]++;
    /*step 2: generate the nextcode values*/
    for(bits = 1; bits <= tree->maxbitlen; bits++)
    {
      nextcode.data[bits] = (nextcode.data[bits - 1] + blcount.data[bits - 1]) << 1;
    }
    /*step 3: generate all the codes*/
    for(n = 0; n < tree->numcodes; n++)
    {
      if(tree->lengths[n] != 0) tree->tree1d[n] = nextcode.data[tree->lengths[n]]++;
    }
  }

  FUNC2(&blcount);
  FUNC2(&nextcode);

  if(!error) return FUNC0(tree);
  else return error;
}