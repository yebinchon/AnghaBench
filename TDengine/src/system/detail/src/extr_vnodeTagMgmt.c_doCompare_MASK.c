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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
#define  TSDB_DATA_TYPE_BIGINT 135 
#define  TSDB_DATA_TYPE_BOOL 134 
#define  TSDB_DATA_TYPE_DOUBLE 133 
#define  TSDB_DATA_TYPE_FLOAT 132 
#define  TSDB_DATA_TYPE_INT 131 
#define  TSDB_DATA_TYPE_NCHAR 130 
#define  TSDB_DATA_TYPE_SMALLINT 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 int TSDB_NCHAR_SIZE ; 
 int FUNC7 (char*,char*,size_t) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int32_t FUNC9(char* f1, char* f2, int32_t type, int32_t size) {
  switch (type) {
    case TSDB_DATA_TYPE_INT:        FUNC0(FUNC4(f1), FUNC4(f2));
    case TSDB_DATA_TYPE_DOUBLE:     FUNC0(FUNC1(f1), FUNC1(f2));
    case TSDB_DATA_TYPE_FLOAT:      FUNC0(FUNC2(f1), FUNC2(f2));
    case TSDB_DATA_TYPE_BIGINT:     FUNC0(FUNC5(f1), FUNC5(f2));
    case TSDB_DATA_TYPE_SMALLINT:   FUNC0(FUNC3(f1), FUNC3(f2));
    case TSDB_DATA_TYPE_TINYINT:
    case TSDB_DATA_TYPE_BOOL:       FUNC0(FUNC6(f1), FUNC6(f2));
    case TSDB_DATA_TYPE_NCHAR: {
      int32_t ret = FUNC8((wchar_t*) f1, (wchar_t*) f2, size/TSDB_NCHAR_SIZE);
      if (ret == 0) {
          return ret;
      }
      return (ret < 0) ? -1 : 1;
    }
    default: {
      int32_t ret = FUNC7(f1, f2, (size_t)size);
      if (ret == 0) {
        return ret;
      }

      return (ret < 0) ? -1 : 1;
    }
  }
}