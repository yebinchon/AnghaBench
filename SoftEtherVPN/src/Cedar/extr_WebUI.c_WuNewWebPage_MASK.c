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
struct TYPE_3__ {int size; char* data; int /*<<< orphan*/  header; } ;
typedef  TYPE_1__ WU_WEBPAGE ;
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 char* HTTP_CONTENT_TYPE3 ; 
 char* HTTP_CONTENT_TYPE4 ; 
 char* HTTP_KEEP_ALIVE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static WU_WEBPAGE *FUNC6(char *content, UINT size, char *filename)
{
	WU_WEBPAGE *ret;

	if(content == NULL)
	{
		return NULL;
	}

	ret = (WU_WEBPAGE*)FUNC3(sizeof(WU_WEBPAGE));
	ret->size = size;
	ret->data = (char*)FUNC3(size);
	FUNC1(ret->data, content, size);

	ret->header = FUNC4("HTTP/1.1", "202", "OK");
	FUNC0(ret->header, FUNC5("Connection", "Keep-Alive"));
	FUNC0(ret->header, FUNC5("Keep-Alive", HTTP_KEEP_ALIVE));

	if(FUNC2(filename, "jpg"))
	{
		FUNC0(ret->header, FUNC5("Content-Type", HTTP_CONTENT_TYPE3));
	}
	FUNC0(ret->header, FUNC5("Content-Type", HTTP_CONTENT_TYPE4));

	return ret;
}