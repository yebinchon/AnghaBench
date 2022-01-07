
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int machine; int version; int release; int nodename; int sysname; } ;


 int pPrint (char*,...) ;
 int tsNumOfCores ;
 int tsOpenMax ;
 int tsPageSize ;
 int tsStreamMax ;
 int tsTotalDataDirGB ;
 int tsTotalMemoryMB ;
 scalar_t__ uname (struct utsname*) ;

void tsPrintOsInfo() {
  pPrint(" os pageSize:            %ld(KB)", tsPageSize);
  pPrint(" os openMax:             %ld", tsOpenMax);
  pPrint(" os streamMax:           %ld", tsStreamMax);
  pPrint(" os numOfCores:          %d", tsNumOfCores);
  pPrint(" os totalDisk:           %f(GB)", tsTotalDataDirGB);
  pPrint(" os totalMemory:         %d(MB)", tsTotalMemoryMB);

  struct utsname buf;
  if (uname(&buf)) {
    pPrint(" can't fetch os info");
    return;
  }
  pPrint(" os sysname:             %s", buf.sysname);
  pPrint(" os nodename:            %s", buf.nodename);
  pPrint(" os release:             %s", buf.release);
  pPrint(" os version:             %s", buf.version);
  pPrint(" os machine:             %s", buf.machine);
}
