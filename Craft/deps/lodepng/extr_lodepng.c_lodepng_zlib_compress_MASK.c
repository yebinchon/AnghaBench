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
struct TYPE_5__ {unsigned char* data; size_t size; } ;
typedef  TYPE_1__ ucvector ;
typedef  int /*<<< orphan*/  LodePNGCompressSettings ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned char const*,unsigned int) ; 
 unsigned int FUNC1 (unsigned char**,size_t*,unsigned char const*,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned char) ; 

unsigned FUNC6(unsigned char** out, size_t* outsize, const unsigned char* in,
                               size_t insize, const LodePNGCompressSettings* settings)
{
  /*initially, *out must be NULL and outsize 0, if you just give some random *out
  that's pointing to a non allocated buffer, this'll crash*/
  ucvector outv;
  size_t i;
  unsigned error;
  unsigned char* deflatedata = 0;
  size_t deflatesize = 0;

  unsigned ADLER32;
  /*zlib data: 1 byte CMF (CM+CINFO), 1 byte FLG, deflate data, 4 byte ADLER32 checksum of the Decompressed data*/
  unsigned CMF = 120; /*0b01111000: CM 8, CINFO 7. With CINFO 7, any window size up to 32768 can be used.*/
  unsigned FLEVEL = 0;
  unsigned FDICT = 0;
  unsigned CMFFLG = 256 * CMF + FDICT * 32 + FLEVEL * 64;
  unsigned FCHECK = 31 - CMFFLG % 31;
  CMFFLG += FCHECK;

  /*ucvector-controlled version of the output buffer, for dynamic array*/
  FUNC4(&outv, *out, *outsize);

  FUNC5(&outv, (unsigned char)(CMFFLG / 256));
  FUNC5(&outv, (unsigned char)(CMFFLG % 256));

  error = FUNC1(&deflatedata, &deflatesize, in, insize, settings);

  if(!error)
  {
    ADLER32 = FUNC0(in, (unsigned)insize);
    for(i = 0; i < deflatesize; i++) FUNC5(&outv, deflatedata[i]);
    FUNC3(deflatedata);
    FUNC2(&outv, ADLER32);
  }

  *out = outv.data;
  *outsize = outv.size;

  return error;
}