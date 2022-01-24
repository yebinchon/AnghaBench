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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static FILE *FUNC3(const char *zFile){
  FILE *f;
  if( FUNC2(zFile,"stdout")==0 ){
    f = stdout;
  }else if( FUNC2(zFile, "stderr")==0 ){
    f = stderr;
  }else if( FUNC2(zFile, "off")==0 ){
    f = 0;
  }else{
    f = FUNC0(zFile, "wb");
    if( f==0 ){
      FUNC1(stderr, "Error: cannot open \"%s\"\n", zFile);
    }
  }
  return f;
}