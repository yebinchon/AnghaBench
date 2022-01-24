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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {int /*<<< orphan*/  lst; } ;
typedef  TYPE_1__ JsonBuf ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_NUM_STR_SZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC3(JsonBuf* buf, int64_t num) {
  FUNC0(buf);
  FUNC1(buf, MAX_NUM_STR_SZ);
  buf->lst += FUNC2(buf->lst, MAX_NUM_STR_SZ, "%ld", num);
}