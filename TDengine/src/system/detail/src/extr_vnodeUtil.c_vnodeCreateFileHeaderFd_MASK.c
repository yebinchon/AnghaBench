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

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int TSDB_FILE_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 char* version ; 
 int /*<<< orphan*/  vnodeFileVersion ; 

void FUNC4(int fd) {
  char temp[TSDB_FILE_HEADER_LEN / 4];
  int  lineLen;

  lineLen = sizeof(temp);

  // write the first line`
  FUNC1(temp, 0, lineLen);
  *(int16_t*)temp = vnodeFileVersion;
  FUNC2(temp + sizeof(int16_t), "tsdb version: %s\n", version);
  /* *((int16_t *)(temp + TSDB_FILE_HEADER_LEN/8)) = vnodeFileVersion; */
  FUNC0(fd, 0, SEEK_SET);
  FUNC3(fd, temp, lineLen);

  // second line
  FUNC1(temp, 0, lineLen);
  FUNC3(fd, temp, lineLen);

  // the third/forth line is the dynamic info
  FUNC1(temp, 0, lineLen);
  FUNC3(fd, temp, lineLen);
  FUNC3(fd, temp, lineLen);
}