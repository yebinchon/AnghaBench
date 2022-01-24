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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  digest; } ;
typedef  TYPE_1__ MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int TSDB_KEY_LEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC4(uint8_t *pMsg, int msgLen, uint8_t *pAuth, uint8_t *pKey) {
  MD5_CTX context;

  FUNC1(&context);
  FUNC2(&context, pKey, TSDB_KEY_LEN);
  FUNC2(&context, (uint8_t *)pMsg, msgLen);
  FUNC2(&context, pKey, TSDB_KEY_LEN);
  FUNC0(&context);

  FUNC3(pAuth, context.digest, sizeof(context.digest));

  return 0;
}