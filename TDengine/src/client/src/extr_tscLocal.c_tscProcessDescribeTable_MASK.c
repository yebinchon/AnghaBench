#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_8__ {int /*<<< orphan*/ * pMeterMeta; } ;
struct TYPE_7__ {int /*<<< orphan*/  cmd; } ;
typedef  TYPE_1__ SSqlObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__ const,scalar_t__ const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static int32_t FUNC6(SSqlObj *pSql) {
  FUNC0(FUNC3(&pSql->cmd, 0)->pMeterMeta != NULL);

  const int32_t NUM_OF_DESCRIBE_TABLE_COLUMNS = 4;
  const int32_t TYPE_COLUMN_LENGTH = 16;
  const int32_t NOTE_COLUMN_MIN_LENGTH = 8;

  int32_t note_field_length = FUNC4(pSql);
  if (note_field_length == 0) {
    note_field_length = NOTE_COLUMN_MIN_LENGTH;
  }

  int32_t rowLen =
      FUNC1(pSql, NUM_OF_DESCRIBE_TABLE_COLUMNS, TYPE_COLUMN_LENGTH, note_field_length);
  FUNC2(&pSql->cmd);
  return FUNC5(pSql, rowLen);
}