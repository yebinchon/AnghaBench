
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cdebugFlag ;
 scalar_t__ ddebugFlag ;
 scalar_t__ debugFlag ;
 scalar_t__ httpDebugFlag ;
 scalar_t__ jnidebugFlag ;
 scalar_t__ mdebugFlag ;
 scalar_t__ monitorDebugFlag ;
 scalar_t__ odbcdebugFlag ;
 int pPrint (char*,scalar_t__) ;
 scalar_t__ rpcDebugFlag ;
 scalar_t__ sdbDebugFlag ;
 scalar_t__ uDebugFlag ;

void tsSetAllDebugFlag() {
  if (mdebugFlag != debugFlag) mdebugFlag = debugFlag;
  if (ddebugFlag != debugFlag) ddebugFlag = debugFlag;
  if (sdbDebugFlag != debugFlag) sdbDebugFlag = debugFlag;
  if (rpcDebugFlag != debugFlag) rpcDebugFlag = debugFlag;
  if (cdebugFlag != debugFlag) cdebugFlag = debugFlag;
  if (jnidebugFlag != debugFlag) jnidebugFlag = debugFlag;
  if (uDebugFlag != debugFlag) uDebugFlag = debugFlag;
  if (httpDebugFlag != debugFlag) httpDebugFlag = debugFlag;
  if (monitorDebugFlag != debugFlag) monitorDebugFlag = debugFlag;
  if (odbcdebugFlag != debugFlag) odbcdebugFlag = debugFlag;
  pPrint("all debug flag are set to %d", debugFlag);
}
