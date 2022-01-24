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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sqlite3_free ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  int n;
  unsigned char *p;
  FUNC1( argc==1 );
  FUNC0(argc);
  n = FUNC5(argv[0]);
  if( n<1 ){
    n = 1;
  }
  p = FUNC2(context, n);
  if( p ){
    FUNC3(n, p);
    FUNC4(context, (char*)p, n, sqlite3_free);
  }
}