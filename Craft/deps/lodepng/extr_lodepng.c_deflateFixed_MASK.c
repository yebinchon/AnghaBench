#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uivector ;
typedef  int /*<<< orphan*/  ucvector ;
struct TYPE_3__ {int /*<<< orphan*/  lazymatching; int /*<<< orphan*/  nicematch; int /*<<< orphan*/  minmatch; int /*<<< orphan*/  windowsize; scalar_t__ use_lz77; } ;
typedef  TYPE_1__ LodePNGCompressSettings ;
typedef  int /*<<< orphan*/  HuffmanTree ;
typedef  int /*<<< orphan*/  Hash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (size_t*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char const*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned FUNC12(ucvector* out, size_t* bp, Hash* hash,
                             const unsigned char* data,
                             size_t datapos, size_t dataend,
                             const LodePNGCompressSettings* settings, int final)
{
  HuffmanTree tree_ll; /*tree for literal values and length codes*/
  HuffmanTree tree_d; /*tree for distance codes*/

  unsigned BFINAL = final;
  unsigned error = 0;
  size_t i;

  FUNC3(&tree_ll);
  FUNC3(&tree_d);

  FUNC8(&tree_ll);
  FUNC7(&tree_d);

  FUNC4(bp, out, BFINAL);
  FUNC4(bp, out, 1); /*first bit of BTYPE*/
  FUNC4(bp, out, 0); /*second bit of BTYPE*/

  if(settings->use_lz77) /*LZ77 encoded*/
  {
    uivector lz77_encoded;
    FUNC10(&lz77_encoded);
    error = FUNC6(&lz77_encoded, hash, data, datapos, dataend, settings->windowsize,
                       settings->minmatch, settings->nicematch, settings->lazymatching);
    if(!error) FUNC11(bp, out, &lz77_encoded, &tree_ll, &tree_d);
    FUNC9(&lz77_encoded);
  }
  else /*no LZ77, but still will be Huffman compressed*/
  {
    for(i = datapos; i < dataend; i++)
    {
      FUNC5(bp, out, FUNC1(&tree_ll, data[i]), FUNC2(&tree_ll, data[i]));
    }
  }
  /*add END code*/
  if(!error) FUNC5(bp, out, FUNC1(&tree_ll, 256), FUNC2(&tree_ll, 256));

  /*cleanup*/
  FUNC0(&tree_ll);
  FUNC0(&tree_d);

  return error;
}