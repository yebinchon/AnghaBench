#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct arguments {int dummy; } ;
struct TYPE_5__ {char* name; TYPE_1__* cols; } ;
struct TYPE_4__ {char* note; char* field; char* type; int length; } ;
typedef  TYPE_2__ STableDef ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* buffer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

void FUNC3(STableDef *tableDes, int numOfCols, struct arguments *arguments, FILE *fp) {
  char *pstr = NULL;
  pstr = buffer;
  int counter = 0;
  int count_temp = 0;

  pstr += FUNC1(buffer, "CREATE TABLE IF NOT EXISTS %s", tableDes->name);

  for (; counter < numOfCols; counter++) {
    if (tableDes->cols[counter].note[0] != '\0') break;

    if (counter == 0) {
      pstr += FUNC1(pstr, " (%s %s", tableDes->cols[counter].field, tableDes->cols[counter].type);
    } else {
      pstr += FUNC1(pstr, ", %s %s", tableDes->cols[counter].field, tableDes->cols[counter].type);
    }

    if (FUNC2(tableDes->cols[counter].type, "binary") == 0 ||
        FUNC2(tableDes->cols[counter].type, "nchar") == 0) {
      pstr += FUNC1(pstr, "(%d)", tableDes->cols[counter].length);
    }
  }

  count_temp = counter;

  for (; counter < numOfCols; counter++) {
    if (counter == count_temp) {
      pstr += FUNC1(pstr, ") TAGS (%s %s", tableDes->cols[counter].field, tableDes->cols[counter].type);
    } else {
      pstr += FUNC1(pstr, ", %s %s", tableDes->cols[counter].field, tableDes->cols[counter].type);
    }

    if (FUNC2(tableDes->cols[counter].type, "binary") == 0 ||
        FUNC2(tableDes->cols[counter].type, "nchar") == 0) {
      pstr += FUNC1(pstr, "(%d)", tableDes->cols[counter].length);
    }
  }

  pstr += FUNC1(pstr, ")");

  FUNC0(fp, "%s\n\n", buffer);
}