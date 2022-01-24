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
typedef  int /*<<< orphan*/  ucvector ;
typedef  int /*<<< orphan*/  LodePNGDecompressSettings ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *,unsigned char const*,size_t*,size_t*,size_t,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,unsigned char const*,size_t*,size_t*,size_t) ; 
 int FUNC2 (size_t*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static unsigned FUNC4(ucvector* out,
                                 const unsigned char* in, size_t insize,
                                 const LodePNGDecompressSettings* settings)
{
  /*bit pointer in the "in" data, current byte is bp >> 3, current bit is bp & 0x7 (from lsb to msb of the byte)*/
  size_t bp = 0;
  unsigned BFINAL = 0;
  size_t pos = 0; /*byte position in the out buffer*/

  unsigned error = 0;

  (void)settings;

  while(!BFINAL)
  {
    unsigned BTYPE;
    if(bp + 2 >= insize * 8) return 52; /*error, bit pointer will jump past memory*/
    BFINAL = FUNC2(&bp, in);
    BTYPE = 1 * FUNC2(&bp, in);
    BTYPE += 2 * FUNC2(&bp, in);

    if(BTYPE == 3) return 20; /*error: invalid BTYPE*/
    else if(BTYPE == 0) error = FUNC1(out, in, &bp, &pos, insize); /*no compression*/
    else error = FUNC0(out, in, &bp, &pos, insize, BTYPE); /*compression, BTYPE 01 or 10*/

    if(error) return error;
  }

  /*Only now we know the true size of out, resize it to that*/
  if(!FUNC3(out, pos)) error = 83; /*alloc fail*/

  return error;
}