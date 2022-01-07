
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dError (char*) ;
 int dPrint (char*) ;
 double tsNumOfCores ;
 double tsNumOfThreadsPerCore ;
 double tsRatioOfQueryThreads ;
 scalar_t__ vnodeInitMgmt () ;
 scalar_t__ vnodeInitPeer (int) ;
 int vnodeInitQueryHandle () ;
 scalar_t__ vnodeInitShell () ;
 scalar_t__ vnodeInitStore () ;
 int vnodeInitTmrCtl () ;
 scalar_t__ vnodeInitVnodes () ;

int vnodeInitSystem() {

  if (!vnodeInitQueryHandle()) {
    dError("failed to init query qhandle, exit");
    return -1;
  }

  if (!vnodeInitTmrCtl()) {
    dError("failed to init timer, exit");
    return -1;
  }

  if (vnodeInitStore() < 0) {
    dError("failed to init vnode storage");
    return -1;
  }

  int numOfThreads = (1.0 - tsRatioOfQueryThreads) * tsNumOfCores * tsNumOfThreadsPerCore / 2.0;
  if (numOfThreads < 1) numOfThreads = 1;
  if (vnodeInitPeer(numOfThreads) < 0) {
    dError("failed to init vnode peer communication");
    return -1;
  }

  if (vnodeInitMgmt() < 0) {
    dError("failed to init communication to mgmt");
    return -1;
  }

  if (vnodeInitShell() < 0) {
    dError("failed to init communication to shell");
    return -1;
  }

  if (vnodeInitVnodes() < 0) {
    dError("failed to init store");
    return -1;
  }

  dPrint("vnode is initialized successfully");

  return 0;
}
