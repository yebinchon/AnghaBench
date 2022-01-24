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
struct callback_data {scalar_t__ db; char* zDbFilename; } ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 scalar_t__ db ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  shellstaticFunc ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC8(struct callback_data *p){
  if( p->db==0 ){
    FUNC6();
    FUNC7(p->zDbFilename, &p->db);
    db = p->db;
    if( db && FUNC4(db)==SQLITE_OK ){
      FUNC2(db, "shellstatic", 0, SQLITE_UTF8, 0,
          shellstaticFunc, 0, 0);
    }
    if( db==0 || SQLITE_OK!=FUNC4(db) ){
      FUNC1(stderr,"Error: unable to open database \"%s\": %s\n", 
          p->zDbFilename, FUNC5(db));
      FUNC0(1);
    }
#ifndef SQLITE_OMIT_LOAD_EXTENSION
    FUNC3(p->db, 1);
#endif
  }
}