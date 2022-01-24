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
typedef  int /*<<< orphan*/  Parse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(Parse *pParse, const char *zName){
  if( FUNC2(zName)>6 && 0==FUNC1(zName, "sqlite_", 7) ){
    FUNC0(pParse, "table %s may not be altered", zName);
    return 1;
  }
  return 0;
}