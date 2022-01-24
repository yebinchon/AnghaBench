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
struct utsname {int /*<<< orphan*/  machine; int /*<<< orphan*/  version; int /*<<< orphan*/  release; int /*<<< orphan*/  nodename; int /*<<< orphan*/  sysname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  tsNumOfCores ; 
 int /*<<< orphan*/  tsOpenMax ; 
 int /*<<< orphan*/  tsPageSize ; 
 int /*<<< orphan*/  tsStreamMax ; 
 int /*<<< orphan*/  tsTotalDataDirGB ; 
 int /*<<< orphan*/  tsTotalMemoryMB ; 
 scalar_t__ FUNC1 (struct utsname*) ; 

void FUNC2() {
  FUNC0(" os pageSize:            %ld(KB)", tsPageSize);
  FUNC0(" os openMax:             %ld", tsOpenMax);
  FUNC0(" os streamMax:           %ld", tsStreamMax);
  FUNC0(" os numOfCores:          %d", tsNumOfCores);
  FUNC0(" os totalDisk:           %f(GB)", tsTotalDataDirGB);
  FUNC0(" os totalMemory:         %d(MB)", tsTotalMemoryMB);

  struct utsname buf;
  if (FUNC1(&buf)) {
    FUNC0(" can't fetch os info");
    return;
  }
  FUNC0(" os sysname:             %s", buf.sysname);
  FUNC0(" os nodename:            %s", buf.nodename);
  FUNC0(" os release:             %s", buf.release);
  FUNC0(" os version:             %s", buf.version);
  FUNC0(" os machine:             %s", buf.machine);
}