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
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  JSON_VALUE ;
typedef  int /*<<< orphan*/  JSON_OBJECT ;
typedef  int /*<<< orphan*/  JSON_ARRAY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
#define  JSON_TYPE_ARRAY 134 
#define  JSON_TYPE_BOOL 133 
#define  JSON_TYPE_ERROR 132 
#define  JSON_TYPE_NULL 131 
#define  JSON_TYPE_NUMBER 130 
#define  JSON_TYPE_OBJECT 129 
#define  JSON_TYPE_STRING 128 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int FUNC16 (char*,char*) ; 

__attribute__((used)) static int FUNC17(JSON_VALUE *value, char *buf, int level, int is_pretty, char *num_buf)
{
	char *key = NULL, *string = NULL;
	JSON_VALUE *temp_value = NULL;
	JSON_ARRAY *array = NULL;
	JSON_OBJECT *object = NULL;
	UINT i = 0, count = 0;
	UINT64 num = 0;
	int written = -1, written_total = 0;
	char tmp[32];

	switch (FUNC13(value)) {
	case JSON_TYPE_ARRAY:
		array = FUNC8(value);
		count = FUNC4(array);
		FUNC1("[");
		if (count > 0 && is_pretty) {
			FUNC1("\n");
		}
		for (i = 0; i < count; i++) {
			if (is_pretty) {
				FUNC0(level + 1);
			}
			temp_value = FUNC3(array, i);
			written = FUNC17(temp_value, buf, level + 1, is_pretty, num_buf);
			if (written < 0) {
				return -1;
			}
			if (buf != NULL) {
				buf += written;
			}
			written_total += written;
			if (i < (count - 1)) {
				FUNC1(",");
			}
			if (is_pretty) {
				FUNC1("\n");
			}
		}
		if (count > 0 && is_pretty) {
			FUNC0(level);
		}
		FUNC1("]");
		return written_total;
	case JSON_TYPE_OBJECT:
		object = FUNC11(value);
		count = FUNC6(object);
		FUNC1("{");
		if (count > 0 && is_pretty) {
			FUNC1("\n");
		}
		for (i = 0; i < count; i++) {
			key = FUNC7(object, i);
			if (key == NULL) {
				return -1;
			}
			if (is_pretty) {
				FUNC0(level + 1);
			}
			written = FUNC16(key, buf);
			if (written < 0) {
				return -1;
			}
			if (buf != NULL) {
				buf += written;
			}
			written_total += written;
			FUNC1(":");
			if (is_pretty) {
				FUNC1(" ");
			}
			temp_value = FUNC5(object, key);
			written = FUNC17(temp_value, buf, level + 1, is_pretty, num_buf);
			if (written < 0) {
				return -1;
			}
			if (buf != NULL) {
				buf += written;
			}
			written_total += written;
			if (i < (count - 1)) {
				FUNC1(",");
			}
			if (is_pretty) {
				FUNC1("\n");
			}
		}
		if (count > 0 && is_pretty) {
			FUNC0(level);
		}
		FUNC1("}");
		return written_total;
	case JSON_TYPE_STRING:
		string = FUNC12(value);
		if (string == NULL) {
			return -1;
		}
		written = FUNC16(string, buf);
		if (written < 0) {
			return -1;
		}
		if (buf != NULL) {
			buf += written;
		}
		written_total += written;
		return written_total;
	case JSON_TYPE_BOOL:
		if (FUNC9(value)) {
			FUNC1("true");
		}
		else {
			FUNC1("false");
		}
		return written_total;
	case JSON_TYPE_NUMBER:
		num = FUNC10(value);
		if (buf != NULL) {
			num_buf = buf;
		}
		FUNC15(tmp, num);
		FUNC2(num_buf, tmp, FUNC14(tmp));
		written = FUNC14(tmp);
		if (buf != NULL) {
			buf += written;
		}
		written_total += written;
		return written_total;
	case JSON_TYPE_NULL:
		FUNC1("null");
		return written_total;
	case JSON_TYPE_ERROR:
		return -1;
	default:
		return -1;
	}
}