
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * TS_PATH_DELIMITER ;
 int copySegment (char*,char*,int ) ;
 char* skipSegments (char*,int ,int) ;

void extractMeterName(char* meterId, char* name) {
  char* r = skipSegments(meterId, TS_PATH_DELIMITER[0], 2);
  copySegment(name, r, TS_PATH_DELIMITER[0]);
}
