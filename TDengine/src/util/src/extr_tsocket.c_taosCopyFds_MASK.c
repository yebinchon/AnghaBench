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
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int COPY_SIZE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char*,int) ; 
 int FUNC3 (int,char*,int) ; 

int FUNC4(int sfd, int dfd, int64_t len) {
  int64_t leftLen;
  int     readLen, writeLen;
  char    temp[COPY_SIZE];

  leftLen = len;

  while (leftLen > 0) {
    if (leftLen < COPY_SIZE)
      readLen = (int)leftLen;
    else
      readLen = COPY_SIZE;  // 4K

    int retLen = FUNC2(sfd, temp, (int)readLen);
    if (readLen != retLen) {
      FUNC0("read error, readLen:%d retLen:%d len:%ld leftLen:%ld, reason:%s", readLen, retLen, len, leftLen,
             FUNC1(errno));
      return -1;
    }

    writeLen = FUNC3(dfd, temp, readLen);

    if (readLen != writeLen) {
      FUNC0("copy error, readLen:%d writeLen:%d len:%ld leftLen:%ld, reason:%s", readLen, writeLen, len, leftLen,
             FUNC1(errno));
      return -1;
    }

    leftLen -= readLen;
  }

  return 0;
}