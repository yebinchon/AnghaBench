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
typedef  int /*<<< orphan*/  SLogBuff ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int) ; 

int FUNC6(SLogBuff *tLogBuff, char *buf, int bufSize) {
  int start = FUNC3(tLogBuff);
  int end = FUNC1(tLogBuff);
  int pollSize = 0;

  if (start == end) {
    return 0;
  } else if (start < end) {
    pollSize = FUNC4(end - start, bufSize);

    FUNC5(buf, FUNC0(tLogBuff) + start, pollSize);
    return pollSize;
  } else {
    pollSize = FUNC4(end + FUNC2(tLogBuff) - start, bufSize);
    if (pollSize > FUNC2(tLogBuff) - start) {
      int tsize = FUNC2(tLogBuff) - start;
      FUNC5(buf, FUNC0(tLogBuff) + start, tsize);
      FUNC5(buf + tsize, FUNC0(tLogBuff), pollSize - tsize);

    } else {
      FUNC5(buf, FUNC0(tLogBuff) + start, pollSize);
    }
    return pollSize;
  }
}