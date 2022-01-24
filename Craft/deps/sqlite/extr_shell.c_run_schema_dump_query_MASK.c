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
struct callback_data {int /*<<< orphan*/  out; int /*<<< orphan*/  db; } ;

/* Variables and functions */
 int SQLITE_CORRUPT ; 
 int /*<<< orphan*/  dump_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,struct callback_data*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*,char const*) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(
  struct callback_data *p, 
  const char *zQuery
){
  int rc;
  char *zErr = 0;
  rc = FUNC3(p->db, zQuery, dump_callback, p, &zErr);
  if( rc==SQLITE_CORRUPT ){
    char *zQ2;
    int len = FUNC6(zQuery);
    FUNC0(p->out, "/****** CORRUPTION ERROR *******/\n");
    if( zErr ){
      FUNC0(p->out, "/****** %s ******/\n", zErr);
      FUNC4(zErr);
      zErr = 0;
    }
    zQ2 = FUNC2( len+100 );
    if( zQ2==0 ) return rc;
    FUNC5(len+100, zQ2, "%s ORDER BY rowid DESC", zQuery);
    rc = FUNC3(p->db, zQ2, dump_callback, p, &zErr);
    if( rc ){
      FUNC0(p->out, "/****** ERROR: %s ******/\n", zErr);
    }else{
      rc = SQLITE_CORRUPT;
    }
    FUNC4(zErr);
    FUNC1(zQ2);
  }
  return rc;
}