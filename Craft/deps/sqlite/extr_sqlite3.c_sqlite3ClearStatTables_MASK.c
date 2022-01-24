#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zTab ;
struct TYPE_8__ {TYPE_1__* aDb; } ;
struct TYPE_7__ {TYPE_4__* db; } ;
struct TYPE_6__ {char* zName; } ;
typedef  TYPE_2__ Parse ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,char const*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*,int) ; 

__attribute__((used)) static void FUNC3(
  Parse *pParse,         /* The parsing context */
  int iDb,               /* The database number */
  const char *zType,     /* "idx" or "tbl" */
  const char *zName      /* Name of index or table */
){
  int i;
  const char *zDbName = pParse->db->aDb[iDb].zName;
  for(i=1; i<=3; i++){
    char zTab[24];
    FUNC2(sizeof(zTab),zTab,"sqlite_stat%d",i);
    if( FUNC0(pParse->db, zTab, zDbName) ){
      FUNC1(pParse,
        "DELETE FROM %Q.%s WHERE %s=%Q",
        zDbName, zTab, zType, zName
      );
    }
  }
}