#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16_t ;
struct pbuf {int tot_len; } ;

/* Variables and functions */
 int FUNC0 (struct pbuf*,char const*,int,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (char const*) ; 

u16_t
FUNC2(struct pbuf* p, const char* substr)
{
  size_t substr_len;
  if ((substr == NULL) || (substr[0] == 0) || (p->tot_len == 0xFFFF)) {
    return 0xFFFF;
  }
  substr_len = FUNC1(substr);
  if (substr_len >= 0xFFFF) {
    return 0xFFFF;
  }
  return FUNC0(p, substr, (u16_t)substr_len, 0);
}