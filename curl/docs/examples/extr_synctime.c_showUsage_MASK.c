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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC1(void)
{
  FUNC0(stderr, "SYNCTIME: Synchronising computer clock with time server"
          " using HTTP protocol.\n");
  FUNC0(stderr, "Usage   : SYNCTIME [Option]\n");
  FUNC0(stderr, "Options :\n");
  FUNC0(stderr, " --server=WEBSERVER        Use this time server instead"
          " of default.\n");
  FUNC0(stderr, " --showall                 Show all HTTP header.\n");
  FUNC0(stderr, " --synctime                Synchronising computer clock"
          " with time server.\n");
  FUNC0(stderr, " --proxy-user=USER[:PASS]  Set proxy username and"
          " password.\n");
  FUNC0(stderr, " --proxy=HOST[:PORT]       Use HTTP proxy on given"
          " port.\n");
  FUNC0(stderr, " --help                    Print this help.\n");
  FUNC0(stderr, "\n");
  return;
}