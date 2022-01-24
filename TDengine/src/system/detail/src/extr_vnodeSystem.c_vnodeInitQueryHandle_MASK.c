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
 int /*<<< orphan*/  queryQhandle ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int tsNumOfCores ; 
 int tsNumOfThreadsPerCore ; 
 int tsNumOfVnodesPerCore ; 
 int tsRatioOfQueryThreads ; 
 int tsSessionsPerVnode ; 

bool FUNC1() {
  int numOfThreads = tsRatioOfQueryThreads * tsNumOfCores * tsNumOfThreadsPerCore;
  if (numOfThreads < 1) numOfThreads = 1;
  queryQhandle = FUNC0(tsNumOfVnodesPerCore * tsNumOfCores * tsSessionsPerVnode, numOfThreads, "query");
  return true;
}