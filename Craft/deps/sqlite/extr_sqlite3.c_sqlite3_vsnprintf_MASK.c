#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_5__ {scalar_t__ useMalloc; } ;
typedef  TYPE_1__ StrAccum ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

char *FUNC3(int n, char *zBuf, const char *zFormat, va_list ap){
  StrAccum acc;
  if( n<=0 ) return zBuf;
  FUNC1(&acc, zBuf, n, 0);
  acc.useMalloc = 0;
  FUNC2(&acc, 0, zFormat, ap);
  return FUNC0(&acc);
}