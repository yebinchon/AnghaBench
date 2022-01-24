#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ucvector ;
struct TYPE_10__ {scalar_t__ colortype; size_t palettesize; int* palette; int key_r; int key_g; int key_b; scalar_t__ key_defined; } ;
typedef  TYPE_2__ LodePNGColorMode ;

/* Variables and functions */
 scalar_t__ LCT_GREY ; 
 scalar_t__ LCT_PALETTE ; 
 scalar_t__ LCT_RGB ; 
 unsigned int FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned char) ; 

__attribute__((used)) static unsigned FUNC4(ucvector* out, const LodePNGColorMode* info)
{
  unsigned error = 0;
  size_t i;
  ucvector tRNS;
  FUNC2(&tRNS);
  if(info->colortype == LCT_PALETTE)
  {
    size_t amount = info->palettesize;
    /*the tail of palette values that all have 255 as alpha, does not have to be encoded*/
    for(i = info->palettesize; i > 0; i--)
    {
      if(info->palette[4 * (i - 1) + 3] == 255) amount--;
      else break;
    }
    /*add only alpha channel*/
    for(i = 0; i < amount; i++) FUNC3(&tRNS, info->palette[4 * i + 3]);
  }
  else if(info->colortype == LCT_GREY)
  {
    if(info->key_defined)
    {
      FUNC3(&tRNS, (unsigned char)(info->key_r / 256));
      FUNC3(&tRNS, (unsigned char)(info->key_r % 256));
    }
  }
  else if(info->colortype == LCT_RGB)
  {
    if(info->key_defined)
    {
      FUNC3(&tRNS, (unsigned char)(info->key_r / 256));
      FUNC3(&tRNS, (unsigned char)(info->key_r % 256));
      FUNC3(&tRNS, (unsigned char)(info->key_g / 256));
      FUNC3(&tRNS, (unsigned char)(info->key_g % 256));
      FUNC3(&tRNS, (unsigned char)(info->key_b / 256));
      FUNC3(&tRNS, (unsigned char)(info->key_b % 256));
    }
  }

  error = FUNC0(out, "tRNS", tRNS.data, tRNS.size);
  FUNC1(&tRNS);

  return error;
}