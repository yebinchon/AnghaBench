
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BotImport_DebugPolygonDelete (int) ;

void BotImport_DebugLineDelete(int line) {
 BotImport_DebugPolygonDelete(line);
}
