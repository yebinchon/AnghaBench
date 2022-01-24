#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t text_num; int /*<<< orphan*/ * text_strings; int /*<<< orphan*/ * text_keys; } ;
typedef  TYPE_1__ LodePNGInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(LodePNGInfo* info)
{
  size_t i;
  for(i = 0; i < info->text_num; i++)
  {
    FUNC1(&info->text_keys[i]);
    FUNC1(&info->text_strings[i]);
  }
  FUNC0(info->text_keys);
  FUNC0(info->text_strings);
}