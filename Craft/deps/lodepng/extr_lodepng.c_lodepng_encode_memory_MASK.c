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
struct TYPE_8__ {unsigned int bitdepth; void* colortype; } ;
struct TYPE_9__ {TYPE_1__ color; } ;
struct TYPE_10__ {unsigned int bitdepth; void* colortype; } ;
struct TYPE_11__ {unsigned int error; TYPE_2__ info_png; TYPE_3__ info_raw; } ;
typedef  TYPE_4__ LodePNGState ;
typedef  void* LodePNGColorType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char**,size_t*,unsigned char const*,unsigned int,unsigned int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 

unsigned FUNC3(unsigned char** out, size_t* outsize, const unsigned char* image,
                               unsigned w, unsigned h, LodePNGColorType colortype, unsigned bitdepth)
{
  unsigned error;
  LodePNGState state;
  FUNC2(&state);
  state.info_raw.colortype = colortype;
  state.info_raw.bitdepth = bitdepth;
  state.info_png.color.colortype = colortype;
  state.info_png.color.bitdepth = bitdepth;
  FUNC0(out, outsize, image, w, h, &state);
  error = state.error;
  FUNC1(&state);
  return error;
}