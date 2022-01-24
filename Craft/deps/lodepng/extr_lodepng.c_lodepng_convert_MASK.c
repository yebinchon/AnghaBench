#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ colortype; int bitdepth; size_t palettesize; unsigned char* palette; } ;
typedef  TYPE_1__ LodePNGColorMode ;
typedef  int /*<<< orphan*/  ColorTree ;

/* Variables and functions */
 scalar_t__ LCT_PALETTE ; 
 scalar_t__ LCT_RGB ; 
 scalar_t__ LCT_RGBA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char,unsigned char,unsigned char,unsigned char,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (unsigned short*,unsigned short*,unsigned short*,unsigned short*,unsigned char const*,size_t,TYPE_1__ const*) ; 
 unsigned int FUNC4 (unsigned char*,unsigned char*,unsigned char*,unsigned char*,unsigned char const*,size_t,TYPE_1__ const*,unsigned int) ; 
 unsigned int FUNC5 (unsigned char*,size_t,int,unsigned char const*,TYPE_1__ const*,unsigned int) ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_1__ const*) ; 
 size_t FUNC7 (unsigned int,unsigned int,TYPE_1__ const*) ; 
 unsigned int FUNC8 (unsigned char*,size_t,TYPE_1__*,unsigned short,unsigned short,unsigned short,unsigned short) ; 
 unsigned int FUNC9 (unsigned char*,size_t,TYPE_1__*,int /*<<< orphan*/ *,unsigned char,unsigned char,unsigned char,unsigned char) ; 

unsigned FUNC10(unsigned char* out, const unsigned char* in,
                         LodePNGColorMode* mode_out, const LodePNGColorMode* mode_in,
                         unsigned w, unsigned h, unsigned fix_png)
{
  unsigned error = 0;
  size_t i;
  ColorTree tree;
  size_t numpixels = w * h;

  if(FUNC6(mode_out, mode_in))
  {
    size_t numbytes = FUNC7(w, h, mode_in);
    for(i = 0; i < numbytes; i++) out[i] = in[i];
    return error;
  }

  if(mode_out->colortype == LCT_PALETTE)
  {
    size_t palsize = 1 << mode_out->bitdepth;
    if(mode_out->palettesize < palsize) palsize = mode_out->palettesize;
    FUNC2(&tree);
    for(i = 0; i < palsize; i++)
    {
      unsigned char* p = &mode_out->palette[i * 4];
      FUNC0(&tree, p[0], p[1], p[2], p[3], i);
    }
  }

  if(mode_in->bitdepth == 16 && mode_out->bitdepth == 16)
  {
    for(i = 0; i < numpixels; i++)
    {
      unsigned short r = 0, g = 0, b = 0, a = 0;
      error = FUNC3(&r, &g, &b, &a, in, i, mode_in);
      if(error) break;
      error = FUNC8(out, i, mode_out, r, g, b, a);
      if(error) break;
    }
  }
  else if(mode_out->bitdepth == 8 && mode_out->colortype == LCT_RGBA)
  {
    error = FUNC5(out, numpixels, 1, in, mode_in, fix_png);
  }
  else if(mode_out->bitdepth == 8 && mode_out->colortype == LCT_RGB)
  {
    error = FUNC5(out, numpixels, 0, in, mode_in, fix_png);
  }
  else
  {
    unsigned char r = 0, g = 0, b = 0, a = 0;
    for(i = 0; i < numpixels; i++)
    {
      error = FUNC4(&r, &g, &b, &a, in, i, mode_in, fix_png);
      if(error) break;
      error = FUNC9(out, i, mode_out, &tree, r, g, b, a);
      if(error) break;
    }
  }

  if(mode_out->colortype == LCT_PALETTE)
  {
    FUNC1(&tree);
  }

  return error;
}