#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {unsigned char bitdepth; scalar_t__ colortype; } ;
struct TYPE_11__ {unsigned char compression_method; unsigned char filter_method; unsigned char interlace_method; TYPE_2__ color; } ;
struct TYPE_8__ {int /*<<< orphan*/  ignore_crc; } ;
struct TYPE_10__ {int error; TYPE_1__ decoder; TYPE_4__ info_png; } ;
typedef  TYPE_3__ LodePNGState ;
typedef  TYPE_4__ LodePNGInfo ;
typedef  scalar_t__ LodePNGColorType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (scalar_t__,unsigned char) ; 
 unsigned int FUNC2 (unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 unsigned int FUNC5 (unsigned char const*) ; 

unsigned FUNC6(unsigned* w, unsigned* h, LodePNGState* state,
                         const unsigned char* in, size_t insize)
{
  LodePNGInfo* info = &state->info_png;
  if(insize == 0 || in == 0)
  {
    FUNC0(state->error, 48); /*error: the given data is empty*/
  }
  if(insize < 29)
  {
    FUNC0(state->error, 27); /*error: the data length is smaller than the length of a PNG header*/
  }

  /*when decoding a new PNG image, make sure all parameters created after previous decoding are reset*/
  FUNC3(info);
  FUNC4(info);

  if(in[0] != 137 || in[1] != 80 || in[2] != 78 || in[3] != 71
     || in[4] != 13 || in[5] != 10 || in[6] != 26 || in[7] != 10)
  {
    FUNC0(state->error, 28); /*error: the first 8 bytes are not the correct PNG signature*/
  }
  if(in[12] != 'I' || in[13] != 'H' || in[14] != 'D' || in[15] != 'R')
  {
    FUNC0(state->error, 29); /*error: it doesn't start with a IHDR chunk!*/
  }

  /*read the values given in the header*/
  *w = FUNC5(&in[16]);
  *h = FUNC5(&in[20]);
  info->color.bitdepth = in[24];
  info->color.colortype = (LodePNGColorType)in[25];
  info->compression_method = in[26];
  info->filter_method = in[27];
  info->interlace_method = in[28];

  if(!state->decoder.ignore_crc)
  {
    unsigned CRC = FUNC5(&in[29]);
    unsigned checksum = FUNC2(&in[12], 17);
    if(CRC != checksum)
    {
      FUNC0(state->error, 57); /*invalid CRC*/
    }
  }

  /*error: only compression method 0 is allowed in the specification*/
  if(info->compression_method != 0) FUNC0(state->error, 32);
  /*error: only filter method 0 is allowed in the specification*/
  if(info->filter_method != 0) FUNC0(state->error, 33);
  /*error: only interlace methods 0 and 1 exist in the specification*/
  if(info->interlace_method > 1) FUNC0(state->error, 34);

  state->error = FUNC1(info->color.colortype, info->color.bitdepth);
  return state->error;
}