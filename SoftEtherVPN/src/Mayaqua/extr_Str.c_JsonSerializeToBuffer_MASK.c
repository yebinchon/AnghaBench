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
 scalar_t__ JSON_RET_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

UINT FUNC2(JSON_VALUE *value, char *buf, UINT buf_size_in_bytes) {
	int written = -1;
	UINT needed_size_in_bytes = FUNC0(value);
	if (needed_size_in_bytes == 0 || buf_size_in_bytes < needed_size_in_bytes) {
		return JSON_RET_ERROR;
	}
	written = FUNC1(value, buf, 0, 0, NULL);
	if (written < 0) {
		return JSON_RET_ERROR;
	}
	return JSON_RET_OK;
}