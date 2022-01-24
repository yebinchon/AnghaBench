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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  JSON_VALUE ;

/* Variables and functions */
 scalar_t__ JSON_RET_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

char * FUNC4(JSON_VALUE *value) {
	UINT serialization_result = JSON_RET_ERROR;
	UINT buf_size_bytes = FUNC1(value);
	char *buf = NULL;
	if (buf_size_bytes == 0) {
		return NULL;
	}
	buf = (char*)FUNC3(buf_size_bytes);
	if (buf == NULL) {
		return NULL;
	}
	serialization_result = FUNC2(value, buf, buf_size_bytes);
	if (serialization_result == JSON_RET_ERROR) {
		FUNC0(buf);
		return NULL;
	}
	return buf;
}