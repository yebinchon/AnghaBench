#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct arguments {int data_batch; int /*<<< orphan*/  end_time; int /*<<< orphan*/  start_time; scalar_t__ schemaonly; } ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_3__ {int type; int /*<<< orphan*/  bytes; } ;
typedef  int /*<<< orphan*/ ** TAOS_ROW ;
typedef  TYPE_1__ TAOS_FIELD ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_SIZE ; 
#define  TSDB_DATA_TYPE_BIGINT 137 
#define  TSDB_DATA_TYPE_BINARY 136 
#define  TSDB_DATA_TYPE_BOOL 135 
#define  TSDB_DATA_TYPE_DOUBLE 134 
#define  TSDB_DATA_TYPE_FLOAT 133 
#define  TSDB_DATA_TYPE_INT 132 
#define  TSDB_DATA_TYPE_NCHAR 131 
#define  TSDB_DATA_TYPE_SMALLINT 130 
#define  TSDB_DATA_TYPE_TIMESTAMP 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* buffer ; 
 char* command ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * result ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/ * stderr ; 
 char* FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  taos ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(FILE *fp, char *tbname, struct arguments *arguments) {
  /* char       temp[MAX_COMMAND_SIZE] = "\0"; */
  int count = 0;
  char *pstr = NULL;
  TAOS_ROW row = NULL;
  int numFields = 0;
  char *tbuf = NULL;

  if (arguments->schemaonly) return 0;

  FUNC6(command, "select * from %s where _c0 >= %ld and _c0 <= %ld order by _c0 asc", tbname, arguments->start_time,
          arguments->end_time);
  if (FUNC13(taos, command) != 0) {
    FUNC3(stderr, "failed to run command %s, reason: %s\n", command, FUNC8(taos));
    return -1;
  }

  result = FUNC14(taos);
  if (result == NULL) {
    FUNC3(stderr, "failed to use result\n");
    return -1;
  }

  numFields = FUNC11(taos);
  FUNC0(numFields > 0);
  TAOS_FIELD *fields = FUNC9(result);
  tbuf = (char *)FUNC5(COMMAND_SIZE);
  if (tbuf == NULL) {
    FUNC3(stderr, "No enough memory\n");
    return -1;
  }

  count = 0;
  while ((row = FUNC10(result)) != NULL) {
    pstr = buffer;

    if (count == 0) {
      pstr += FUNC6(pstr, "INSERT INTO %s VALUES (", tbname);
    } else {
      pstr += FUNC6(pstr, "(");
    }

    for (int col = 0; col < numFields; col++) {
      if (col != 0) pstr += FUNC6(pstr, ", ");

      if (row[col] == NULL) {
        pstr += FUNC6(pstr, "NULL");
        continue;
      }

      switch (fields[col].type) {
        case TSDB_DATA_TYPE_BOOL:
          pstr += FUNC6(pstr, "%d", ((((int)(*((char *)row[col]))) == 1) ? 1 : 0));
          break;
        case TSDB_DATA_TYPE_TINYINT:
          pstr += FUNC6(pstr, "%d", (int)(*((char *)row[col])));
          break;
        case TSDB_DATA_TYPE_SMALLINT:
          pstr += FUNC6(pstr, "%d", (int)(*((short *)row[col])));
          break;
        case TSDB_DATA_TYPE_INT:
          pstr += FUNC6(pstr, "%d", *((int *)row[col]));
          break;
        case TSDB_DATA_TYPE_BIGINT:
          pstr += FUNC6(pstr, "%ld", *((int64_t *)row[col]));
          break;
        case TSDB_DATA_TYPE_FLOAT:
          pstr += FUNC6(pstr, "%f", *((float *)row[col]));
          break;
        case TSDB_DATA_TYPE_DOUBLE:
          pstr += FUNC6(pstr, "%f", *((double *)row[col]));
          break;
        case TSDB_DATA_TYPE_BINARY:
          *(pstr++) = '\'';
          FUNC1((char *)row[col], fields[col].bytes, tbuf, COMMAND_SIZE);
          pstr = FUNC7(pstr, tbuf);
          *(pstr++) = '\'';
          break;
        case TSDB_DATA_TYPE_NCHAR:
          FUNC2((char *)row[col], fields[col].bytes, tbuf, COMMAND_SIZE);
          pstr += FUNC6(pstr, "\'%s\'", tbuf);
          break;
        case TSDB_DATA_TYPE_TIMESTAMP:
          pstr += FUNC6(pstr, "%ld", *(int64_t *)row[col]);
          break;
        default:
          break;
      }
    }
    pstr += FUNC6(pstr, ")");

    count++;
    FUNC3(fp, "%s", buffer);

    if (count >= arguments->data_batch) {
      FUNC3(fp, "\n");
      count = 0;
    } else {
      FUNC3(fp, "\\\n");
    }
  }

  FUNC3(fp, "\n");

  if (tbuf) FUNC4(tbuf);
  FUNC12(result);
  result = NULL;
  return 0;
}