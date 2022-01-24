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
struct TYPE_3__ {size_t size; unsigned int* data; } ;
typedef  TYPE_1__ uivector ;
typedef  int /*<<< orphan*/  ucvector ;
typedef  int /*<<< orphan*/  HuffmanTree ;

/* Variables and functions */
 unsigned int* DISTANCEEXTRA ; 
 unsigned int FIRST_LENGTH_CODE_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned int* LENGTHEXTRA ; 
 int /*<<< orphan*/  FUNC2 (size_t*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(size_t* bp, ucvector* out, const uivector* lz77_encoded,
                          const HuffmanTree* tree_ll, const HuffmanTree* tree_d)
{
  size_t i = 0;
  for(i = 0; i < lz77_encoded->size; i++)
  {
    unsigned val = lz77_encoded->data[i];
    FUNC3(bp, out, FUNC0(tree_ll, val), FUNC1(tree_ll, val));
    if(val > 256) /*for a length code, 3 more things have to be added*/
    {
      unsigned length_index = val - FIRST_LENGTH_CODE_INDEX;
      unsigned n_length_extra_bits = LENGTHEXTRA[length_index];
      unsigned length_extra_bits = lz77_encoded->data[++i];

      unsigned distance_code = lz77_encoded->data[++i];

      unsigned distance_index = distance_code;
      unsigned n_distance_extra_bits = DISTANCEEXTRA[distance_index];
      unsigned distance_extra_bits = lz77_encoded->data[++i];

      FUNC2(bp, out, length_extra_bits, n_length_extra_bits);
      FUNC3(bp, out, FUNC0(tree_d, distance_code),
                       FUNC1(tree_d, distance_code));
      FUNC2(bp, out, distance_extra_bits, n_distance_extra_bits);
    }
  }
}