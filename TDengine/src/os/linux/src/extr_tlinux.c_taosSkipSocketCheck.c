
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int release; } ;


 int pPrint (char*) ;
 scalar_t__ strstr (int ,char*) ;
 scalar_t__ uname (struct utsname*) ;

bool taosSkipSocketCheck() {
  struct utsname buf;
  if (uname(&buf)) {
    pPrint("can't fetch os info");
    return 0;
  }

  if (strstr(buf.release, "Microsoft") != 0) {
    pPrint("using WSLv1");
    return 1;
  }

  return 0;
}
