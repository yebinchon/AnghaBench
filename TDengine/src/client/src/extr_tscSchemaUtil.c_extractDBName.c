
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* z; int type; int n; } ;
typedef TYPE_1__ SSQLToken ;


 int TK_STRING ;
 int * TS_PATH_DELIMITER ;
 int copySegment (char*,char*,int ) ;
 char* skipSegments (char*,int ,int) ;
 int strlen (char*) ;

SSQLToken extractDBName(char* meterId, char* name) {
  char* r = skipSegments(meterId, TS_PATH_DELIMITER[0], 1);
  copySegment(name, r, TS_PATH_DELIMITER[0]);

  SSQLToken token = {.z = name, .n = strlen(name), .type = TK_STRING};
  return token;
}
