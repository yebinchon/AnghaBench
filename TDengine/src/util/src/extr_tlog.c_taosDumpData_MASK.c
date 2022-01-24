#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* logDir ; 
 TYPE_1__* logHandle ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned char) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ tsAvailLogDirGB ; 
 scalar_t__ tsMinimalLogDirGB ; 
 scalar_t__ tsTotalLogDirGB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 

void FUNC4(unsigned char *msg, int len) {
  if (tsTotalLogDirGB != 0 && tsAvailLogDirGB < tsMinimalLogDirGB) {
    FUNC1("server disk:%s space remain %.3f GB, total %.1f GB, stop dump log.\n", logDir, tsAvailLogDirGB, tsTotalLogDirGB);
    FUNC0(stdout);
    return;
  }

  char temp[256];
  int  i, pos = 0, c = 0;

  for (i = 0; i < len; ++i) {
    FUNC2(temp + pos, "%02x ", msg[i]);
    c++;
    pos += 3;
    if (c >= 16) {
      temp[pos++] = '\n';
      FUNC3(logHandle->fd, temp, (unsigned int)pos);
      c = 0;
      pos = 0;
    }
  }

  temp[pos++] = '\n';

  FUNC3(logHandle->fd, temp, (unsigned int)pos);

  return;
}