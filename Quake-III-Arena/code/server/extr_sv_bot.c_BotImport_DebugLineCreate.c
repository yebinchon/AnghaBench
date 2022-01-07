
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BotImport_DebugPolygonCreate (int ,int ,int *) ;

int BotImport_DebugLineCreate(void) {
 vec3_t points[1];
 return BotImport_DebugPolygonCreate(0, 0, points);
}
