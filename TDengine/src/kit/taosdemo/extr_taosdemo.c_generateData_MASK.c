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
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_DATA_SIZE ; 
 int MAX_NUM_DATATYPE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

void FUNC5(char *res, char **data_type, int num_of_cols, int64_t timestamp, int len_of_binary) {
  FUNC0(res, 0, MAX_DATA_SIZE);
  char *pstr = res;
  pstr += FUNC3(pstr, "(%ld", timestamp);
  int c = 0;

  for (; c < MAX_NUM_DATATYPE; c++) {
    if (FUNC4(data_type[c], "") == 0) {
      break;
    }
  }

  for (int i = 0; i < num_of_cols; i++) {
    if (FUNC4(data_type[i % c], "tinyint") == 0) {
      pstr += FUNC3(pstr, ", %d", (int)(FUNC1() % 128));
    } else if (FUNC4(data_type[i % c], "smallint") == 0) {
      pstr += FUNC3(pstr, ", %d", (int)(FUNC1() % 32767));
    } else if (FUNC4(data_type[i % c], "int") == 0) {
      pstr += FUNC3(pstr, ", %d", (int)(FUNC1() % 10)); 
    } else if (FUNC4(data_type[i % c], "bigint") == 0) {
      pstr += FUNC3(pstr, ", %ld", FUNC1() % 2147483648);
    } else if (FUNC4(data_type[i % c], "float") == 0) {
      pstr += FUNC3(pstr, ", %10.4f", (float)(FUNC1() / 1000));
    } else if (FUNC4(data_type[i % c], "double") == 0) {
      double t = (double)(FUNC1() / 1000000);
      pstr += FUNC3(pstr, ", %20.8f", t);
    } else if (FUNC4(data_type[i % c], "bool") == 0) {
      bool b = FUNC1() & 1;
      pstr += FUNC3(pstr, ", %s", b ? "true" : "false");
    } else if (FUNC4(data_type[i % c], "binary") == 0) {
      char s[len_of_binary];
      FUNC2(s, len_of_binary);
      pstr += FUNC3(pstr, ", %s", s);
    }
  }

  pstr += FUNC3(pstr, ")");
}