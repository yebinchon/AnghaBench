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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static void FUNC3(FILE *out, const char *z){
  unsigned int c;
  FUNC1('"', out);
  while( (c = *(z++))!=0 ){
    if( c=='\\' ){
      FUNC1(c, out);
      FUNC1(c, out);
    }else if( c=='"' ){
      FUNC1('\\', out);
      FUNC1('"', out);
    }else if( c=='\t' ){
      FUNC1('\\', out);
      FUNC1('t', out);
    }else if( c=='\n' ){
      FUNC1('\\', out);
      FUNC1('n', out);
    }else if( c=='\r' ){
      FUNC1('\\', out);
      FUNC1('r', out);
    }else if( !FUNC2(c) ){
      FUNC0(out, "\\%03o", c&0xff);
    }else{
      FUNC1(c, out);
    }
  }
  FUNC1('"', out);
}