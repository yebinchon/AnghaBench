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
typedef  struct String* var ;
typedef  int /*<<< orphan*/  va_list ;
struct String {scalar_t__ val; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(var self, int pos, const char* fmt, va_list va) {
  struct String* s = self;
  return FUNC0(s->val + pos, fmt, va);
}