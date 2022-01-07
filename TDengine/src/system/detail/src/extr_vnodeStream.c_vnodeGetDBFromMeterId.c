
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* meterId; } ;
typedef TYPE_1__ SMeterObj ;


 int memcpy (char*,char*,int) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void vnodeGetDBFromMeterId(SMeterObj *pObj, char *db) {
  char *st = strstr(pObj->meterId, ".");
  char *end = strstr(st + 1, ".");

  memcpy(db, st + 1, end - (st + 1));
}
