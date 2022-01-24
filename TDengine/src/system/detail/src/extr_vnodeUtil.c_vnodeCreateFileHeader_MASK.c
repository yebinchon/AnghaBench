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
typedef  int /*<<< orphan*/  temp ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int TSDB_FILE_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 char* version ; 
 int /*<<< orphan*/  vnodeFileVersion ; 

void FUNC4(FILE* fp) {
  char temp[TSDB_FILE_HEADER_LEN / 4];
  int  lineLen;

  lineLen = sizeof(temp);

  // write the first line
  FUNC2(temp, 0, lineLen);
  *(int16_t*)temp = vnodeFileVersion;
  FUNC3(temp + sizeof(int16_t), "tsdb version: %s\n", version);
  /* *((int16_t *)(temp + TSDB_FILE_HEADER_LEN/8)) = vnodeFileVersion; */
  FUNC0(fp, 0, SEEK_SET);
  FUNC1(temp, lineLen, 1, fp);

  // second line
  FUNC2(temp, 0, lineLen);
  FUNC1(temp, lineLen, 1, fp);

  // the third line is the dynamic info
  FUNC2(temp, 0, lineLen);
  FUNC1(temp, lineLen, 1, fp);
  FUNC1(temp, lineLen, 1, fp);
}