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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_3__ {int size; char* data; int /*<<< orphan*/  header; } ;
typedef  TYPE_1__ WU_WEBPAGE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char* HTTP_CONTENT_TYPE4 ; 
 char* HTTP_KEEP_ALIVE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static WU_WEBPAGE *FUNC6(wchar_t *content)
{
	WU_WEBPAGE *ret;

	if(content == NULL)
	{
		return NULL;
	}

	ret = (WU_WEBPAGE*)FUNC2(sizeof(WU_WEBPAGE));
	ret->size = FUNC1(content);
	ret->data = (char*)FUNC2(ret->size);
	FUNC5(ret->data, ret->size, content);

	ret->header = FUNC3("HTTP/1.1", "202", "OK");
	FUNC0(ret->header, FUNC4("Content-Type", HTTP_CONTENT_TYPE4));
	FUNC0(ret->header, FUNC4("Connection", "Keep-Alive"));
	FUNC0(ret->header, FUNC4("Keep-Alive", HTTP_KEEP_ALIVE));

	return ret;
}