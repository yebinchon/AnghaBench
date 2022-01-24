#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int customScore; int bandwidthMb; int /*<<< orphan*/  privateIp; } ;
typedef  TYPE_1__ SDnodeObj ;

/* Variables and functions */
 int TSDB_CODE_INVALID_SQL ; 
 int TSDB_CODE_SUCCESS ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char**,int*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(SDnodeObj *pDnode, char *msg) {
  char *option, *value;
  int   olen, valen;

  FUNC5(msg, &option, &olen);
  if (FUNC6(option, "unremove", 8) == 0) {
    FUNC2(pDnode);
    return TSDB_CODE_SUCCESS;
  } else if (FUNC6(option, "score", 5) == 0) {
    FUNC5(option + olen + 1, &value, &valen);
    if (valen > 0) {
      int score = FUNC0(value);
      FUNC1("dnode:%s, custom score set from:%d to:%d", FUNC7(pDnode->privateIp), pDnode->customScore, score);
      pDnode->customScore = score;
      FUNC4(pDnode);
      FUNC3(15);
    }
    return TSDB_CODE_INVALID_SQL;
  } else if (FUNC6(option, "bandwidth", 9) == 0) {
    FUNC5(msg, &value, &valen);
    if (valen > 0) {
      int bandwidthMb = FUNC0(value);
      if (bandwidthMb >= 0 && bandwidthMb < 10000000) {
        FUNC1("dnode:%s, bandwidth(Mb) set from:%d to:%d", FUNC7(pDnode->privateIp), pDnode->bandwidthMb, bandwidthMb);
        pDnode->bandwidthMb = bandwidthMb;
        FUNC4(pDnode);
        return TSDB_CODE_SUCCESS;
      }
    }
    return TSDB_CODE_INVALID_SQL;
  }

  return -1;
}