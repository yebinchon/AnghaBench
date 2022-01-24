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
typedef  int /*<<< orphan*/  zBase ;
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  StrAccum ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_MAX_LENGTH ; 
 int /*<<< orphan*/  SQLITE_MISUSE_BKPT ; 
 int SQLITE_PRINT_BUF_SIZE ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 

char *FUNC4(const char *zFormat, va_list ap){
  char *z;
  char zBase[SQLITE_PRINT_BUF_SIZE];
  StrAccum acc;

#ifdef SQLITE_ENABLE_API_ARMOR  
  if( zFormat==0 ){
    (void)SQLITE_MISUSE_BKPT;
    return 0;
  }
#endif
#ifndef SQLITE_OMIT_AUTOINIT
  if( FUNC3() ) return 0;
#endif
  FUNC1(&acc, 0, zBase, sizeof(zBase), SQLITE_MAX_LENGTH);
  FUNC2(&acc, zFormat, ap);
  z = FUNC0(&acc);
  return z;
}