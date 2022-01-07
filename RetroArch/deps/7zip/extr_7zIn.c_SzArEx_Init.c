
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int FileNames; scalar_t__ FileNameOffsets; scalar_t__ FileIndexToFolderIndexMap; scalar_t__ FolderStartFileIndex; scalar_t__ PackStreamStartPositions; scalar_t__ FolderStartPackStreamIndex; int db; } ;
typedef TYPE_1__ CSzArEx ;


 int Buf_Init (int *) ;
 int SzAr_Init (int *) ;

void SzArEx_Init(CSzArEx *p)
{
   SzAr_Init(&p->db);
   p->FolderStartPackStreamIndex = 0;
   p->PackStreamStartPositions = 0;
   p->FolderStartFileIndex = 0;
   p->FileIndexToFolderIndexMap = 0;
   p->FileNameOffsets = 0;
   Buf_Init(&p->FileNames);
}
