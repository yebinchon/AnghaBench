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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 scalar_t__ FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 size_t FUNC3 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (char*,char const*) ; 

int FUNC11(const char *fileName) {
  FILE *fp = FUNC2(fileName, "r");
  if (fp == NULL) {
    return -1;
  }

  FUNC8("open telegraf schema file:%s success", fileName);
  FUNC5(fp, 0, SEEK_END);
  size_t contentSize = (size_t)FUNC6(fp);
  FUNC9(fp);
  char *content = (char *)FUNC0(contentSize * sizeof(char) + 1, 1);
  size_t result = FUNC3(content, 1, contentSize, fp);
  if (result != contentSize) {
    FUNC7("failed to read telegraf schema file:%s", fileName);
    return -1;
  }

  int schemaNum = FUNC10(content, fileName);

  FUNC4(content);
  FUNC1(fp);
  FUNC8("parse telegraf schema file:%s, schema size:%d", fileName, schemaNum);

  return schemaNum;
}