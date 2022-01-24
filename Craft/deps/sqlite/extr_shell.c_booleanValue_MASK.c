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

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC3(char *zArg){
  int i;
  for(i=0; zArg[i]>='0' && zArg[i]<='9'; i++){}
  if( i>0 && zArg[i]==0 ) return FUNC0(zArg);
  if( FUNC2(zArg, "on")==0 || FUNC2(zArg,"yes")==0 ){
    return 1;
  }
  if( FUNC2(zArg, "off")==0 || FUNC2(zArg,"no")==0 ){
    return 0;
  }
  FUNC1(stderr, "ERROR: Not a boolean value: \"%s\". Assuming \"no\".\n",
          zArg);
  return 0;
}