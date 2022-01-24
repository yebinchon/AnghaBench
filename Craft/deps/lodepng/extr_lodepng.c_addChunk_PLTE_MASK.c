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
struct TYPE_10__ {int palettesize; int /*<<< orphan*/ * palette; } ;
typedef  TYPE_2__ LodePNGColorMode ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC4(ucvector* out, const LodePNGColorMode* info)
{
  unsigned error = 0;
  size_t i;
  ucvector PLTE;
  FUNC2(&PLTE);
  for(i = 0; i < info->palettesize * 4; i++)
  {
    /*add all channels except alpha channel*/
    if(i % 4 != 3) FUNC3(&PLTE, info->palette[i]);
  }
  error = FUNC0(out, "PLTE", PLTE.data, PLTE.size);
  FUNC1(&PLTE);

  return error;
}