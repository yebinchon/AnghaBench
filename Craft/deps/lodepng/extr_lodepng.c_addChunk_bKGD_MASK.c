#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ ucvector ;
struct TYPE_10__ {scalar_t__ colortype; } ;
struct TYPE_12__ {int background_r; int background_g; int background_b; TYPE_1__ color; } ;
typedef  TYPE_3__ LodePNGInfo ;

/* Variables and functions */
 scalar_t__ LCT_GREY ; 
 scalar_t__ LCT_GREY_ALPHA ; 
 scalar_t__ LCT_PALETTE ; 
 scalar_t__ LCT_RGB ; 
 scalar_t__ LCT_RGBA ; 
 unsigned int FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned char) ; 

__attribute__((used)) static unsigned FUNC4(ucvector* out, const LodePNGInfo* info)
{
  unsigned error = 0;
  ucvector bKGD;
  FUNC2(&bKGD);
  if(info->color.colortype == LCT_GREY || info->color.colortype == LCT_GREY_ALPHA)
  {
    FUNC3(&bKGD, (unsigned char)(info->background_r / 256));
    FUNC3(&bKGD, (unsigned char)(info->background_r % 256));
  }
  else if(info->color.colortype == LCT_RGB || info->color.colortype == LCT_RGBA)
  {
    FUNC3(&bKGD, (unsigned char)(info->background_r / 256));
    FUNC3(&bKGD, (unsigned char)(info->background_r % 256));
    FUNC3(&bKGD, (unsigned char)(info->background_g / 256));
    FUNC3(&bKGD, (unsigned char)(info->background_g % 256));
    FUNC3(&bKGD, (unsigned char)(info->background_b / 256));
    FUNC3(&bKGD, (unsigned char)(info->background_b % 256));
  }
  else if(info->color.colortype == LCT_PALETTE)
  {
    FUNC3(&bKGD, (unsigned char)(info->background_r % 256)); /*palette index*/
  }

  error = FUNC0(out, "bKGD", bKGD.data, bKGD.size);
  FUNC1(&bKGD);

  return error;
}