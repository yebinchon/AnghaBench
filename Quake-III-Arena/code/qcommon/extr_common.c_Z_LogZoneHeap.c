
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zonedebug_t ;
struct TYPE_5__ {int allocSize; int label; int line; int file; } ;
struct TYPE_7__ {scalar_t__ size; TYPE_1__ d; scalar_t__ tag; struct TYPE_7__* next; } ;
struct TYPE_6__ {TYPE_3__ blocklist; } ;
typedef TYPE_2__ memzone_t ;
typedef TYPE_3__ memblock_t ;
typedef int buf ;


 int Com_sprintf (char*,int,char*,...) ;
 int FS_Initialized () ;
 int FS_Write (char*,int ,int ) ;
 int logfile ;
 int strlen (char*) ;

void Z_LogZoneHeap( memzone_t *zone, char *name ) {




 memblock_t *block;
 char buf[4096];
 int size, allocSize, numBlocks;

 if (!logfile || !FS_Initialized())
  return;
 size = allocSize = numBlocks = 0;
 Com_sprintf(buf, sizeof(buf), "\r\n================\r\n%s log\r\n================\r\n", name);
 FS_Write(buf, strlen(buf), logfile);
 for (block = zone->blocklist.next ; block->next != &zone->blocklist; block = block->next) {
  if (block->tag) {
   size += block->size;
   numBlocks++;
  }
 }




 allocSize = numBlocks * sizeof(memblock_t);

 Com_sprintf(buf, sizeof(buf), "%d %s memory in %d blocks\r\n", size, name, numBlocks);
 FS_Write(buf, strlen(buf), logfile);
 Com_sprintf(buf, sizeof(buf), "%d %s memory overhead\r\n", size - allocSize, name);
 FS_Write(buf, strlen(buf), logfile);
}
