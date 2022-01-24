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
struct TYPE_3__ {char** text_keys; int text_num; char** text_strings; } ;
typedef  TYPE_1__ LodePNGInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 scalar_t__ FUNC1 (char**,int) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char**,char const*) ; 

unsigned FUNC4(LodePNGInfo* info, const char* key, const char* str)
{
  char** new_keys = (char**)(FUNC1(info->text_keys, sizeof(char*) * (info->text_num + 1)));
  char** new_strings = (char**)(FUNC1(info->text_strings, sizeof(char*) * (info->text_num + 1)));
  if(!new_keys || !new_strings)
  {
    FUNC0(new_keys);
    FUNC0(new_strings);
    return 83; /*alloc fail*/
  }

  info->text_num++;
  info->text_keys = new_keys;
  info->text_strings = new_strings;

  FUNC2(&info->text_keys[info->text_num - 1]);
  FUNC3(&info->text_keys[info->text_num - 1], key);

  FUNC2(&info->text_strings[info->text_num - 1]);
  FUNC3(&info->text_strings[info->text_num - 1], str);

  return 0;
}