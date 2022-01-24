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
struct TYPE_3__ {char** itext_keys; int itext_num; char** itext_langtags; char** itext_transkeys; char** itext_strings; } ;
typedef  TYPE_1__ LodePNGInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 scalar_t__ FUNC1 (char**,int) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char**,char const*) ; 

unsigned FUNC4(LodePNGInfo* info, const char* key, const char* langtag,
                           const char* transkey, const char* str)
{
  char** new_keys = (char**)(FUNC1(info->itext_keys, sizeof(char*) * (info->itext_num + 1)));
  char** new_langtags = (char**)(FUNC1(info->itext_langtags, sizeof(char*) * (info->itext_num + 1)));
  char** new_transkeys = (char**)(FUNC1(info->itext_transkeys, sizeof(char*) * (info->itext_num + 1)));
  char** new_strings = (char**)(FUNC1(info->itext_strings, sizeof(char*) * (info->itext_num + 1)));
  if(!new_keys || !new_langtags || !new_transkeys || !new_strings)
  {
    FUNC0(new_keys);
    FUNC0(new_langtags);
    FUNC0(new_transkeys);
    FUNC0(new_strings);
    return 83; /*alloc fail*/
  }

  info->itext_num++;
  info->itext_keys = new_keys;
  info->itext_langtags = new_langtags;
  info->itext_transkeys = new_transkeys;
  info->itext_strings = new_strings;

  FUNC2(&info->itext_keys[info->itext_num - 1]);
  FUNC3(&info->itext_keys[info->itext_num - 1], key);

  FUNC2(&info->itext_langtags[info->itext_num - 1]);
  FUNC3(&info->itext_langtags[info->itext_num - 1], langtag);

  FUNC2(&info->itext_transkeys[info->itext_num - 1]);
  FUNC3(&info->itext_transkeys[info->itext_num - 1], transkey);

  FUNC2(&info->itext_strings[info->itext_num - 1]);
  FUNC3(&info->itext_strings[info->itext_num - 1], str);

  return 0;
}