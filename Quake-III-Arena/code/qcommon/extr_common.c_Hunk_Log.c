
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; int label; int line; int file; struct TYPE_3__* next; } ;
typedef TYPE_1__ hunkblock_t ;
typedef int buf ;


 int Com_sprintf (char*,int,char*,...) ;
 int FS_Initialized () ;
 int FS_Write (char*,int ,int ) ;
 TYPE_1__* hunkblocks ;
 int logfile ;
 int strlen (char*) ;

void Hunk_Log( void) {
 hunkblock_t *block;
 char buf[4096];
 int size, numBlocks;

 if (!logfile || !FS_Initialized())
  return;
 size = 0;
 numBlocks = 0;
 Com_sprintf(buf, sizeof(buf), "\r\n================\r\nHunk log\r\n================\r\n");
 FS_Write(buf, strlen(buf), logfile);
 for (block = hunkblocks ; block; block = block->next) {




  size += block->size;
  numBlocks++;
 }
 Com_sprintf(buf, sizeof(buf), "%d Hunk memory\r\n", size);
 FS_Write(buf, strlen(buf), logfile);
 Com_sprintf(buf, sizeof(buf), "%d hunk blocks\r\n", numBlocks);
 FS_Write(buf, strlen(buf), logfile);
}
