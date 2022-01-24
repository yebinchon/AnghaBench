#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_6__ {char* zTarget; int /*<<< orphan*/  zSpan; int /*<<< orphan*/  op; } ;
typedef  TYPE_1__ TriggerStep ;
struct TYPE_7__ {scalar_t__ n; int /*<<< orphan*/  z; } ;
typedef  TYPE_2__ Token ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 

__attribute__((used)) static TriggerStep *FUNC4(
  sqlite3 *db,                /* Database connection */
  u8 op,                      /* Trigger opcode */
  Token *pName,               /* The target name */
  const char *zStart,         /* Start of SQL text */
  const char *zEnd            /* End of SQL text */
){
  TriggerStep *pTriggerStep;

  pTriggerStep = FUNC1(db, sizeof(TriggerStep) + pName->n + 1);
  if( pTriggerStep ){
    char *z = (char*)&pTriggerStep[1];
    FUNC0(z, pName->z, pName->n);
    FUNC2(z);
    pTriggerStep->zTarget = z;
    pTriggerStep->op = op;
    pTriggerStep->zSpan = FUNC3(db, zStart, zEnd);
  }
  return pTriggerStep;
}