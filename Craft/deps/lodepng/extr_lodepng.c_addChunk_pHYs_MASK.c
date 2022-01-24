#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ucvector ;
struct TYPE_11__ {int /*<<< orphan*/  phys_unit; int /*<<< orphan*/  phys_y; int /*<<< orphan*/  phys_x; } ;
typedef  TYPE_2__ LodePNGInfo ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC5(ucvector* out, const LodePNGInfo* info)
{
  unsigned error = 0;
  ucvector data;
  FUNC3(&data);

  FUNC1(&data, info->phys_x);
  FUNC1(&data, info->phys_y);
  FUNC4(&data, info->phys_unit);

  error = FUNC0(out, "pHYs", data.data, data.size);
  FUNC2(&data);

  return error;
}