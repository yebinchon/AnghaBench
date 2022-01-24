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
struct TYPE_2__ {char* url; } ;
typedef  TYPE_1__ ConnInfo ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,double,double) ; 

__attribute__((used)) static int FUNC1(void *p, double dltotal, double dlnow, double ult,
                   double uln)
{
  ConnInfo *conn = (ConnInfo *)p;
  (void)ult;
  (void)uln;

  FUNC0(MSG_OUT, "Progress: %s (%g/%g)\n", conn->url, dlnow, dltotal);
  return 0;
}