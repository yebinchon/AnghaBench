#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ucvector ;
struct TYPE_5__ {int btype; int /*<<< orphan*/  windowsize; } ;
typedef  TYPE_1__ LodePNGCompressSettings ;
typedef  int /*<<< orphan*/  Hash ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,unsigned char const*,size_t,size_t,TYPE_1__ const*,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,unsigned char const*,size_t,size_t,TYPE_1__ const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC5(ucvector* out, const unsigned char* in, size_t insize,
                                 const LodePNGCompressSettings* settings)
{
  unsigned error = 0;
  size_t i, blocksize, numdeflateblocks;
  size_t bp = 0; /*the bit pointer*/
  Hash hash;

  if(settings->btype > 2) return 61;
  else if(settings->btype == 0) return FUNC2(out, in, insize);
  else if(settings->btype == 1) blocksize = insize;
  else /*if(settings->btype == 2)*/
  {
    blocksize = insize / 8 + 8;
    if(blocksize < 65535) blocksize = 65535;
  }

  numdeflateblocks = (insize + blocksize - 1) / blocksize;
  if(numdeflateblocks == 0) numdeflateblocks = 1;

  error = FUNC4(&hash, settings->windowsize);
  if(error) return error;

  for(i = 0; i < numdeflateblocks && !error; i++)
  {
    int final = i == numdeflateblocks - 1;
    size_t start = i * blocksize;
    size_t end = start + blocksize;
    if(end > insize) end = insize;

    if(settings->btype == 1) error = FUNC1(out, &bp, &hash, in, start, end, settings, final);
    else if(settings->btype == 2) error = FUNC0(out, &bp, &hash, in, start, end, settings, final);
  }

  FUNC3(&hash);

  return error;
}