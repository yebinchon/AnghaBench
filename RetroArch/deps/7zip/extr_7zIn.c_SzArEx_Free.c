
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int db; int FileNames; int FileNameOffsets; int FileIndexToFolderIndexMap; int FolderStartFileIndex; int PackStreamStartPositions; int FolderStartPackStreamIndex; } ;
typedef int ISzAlloc ;
typedef TYPE_1__ CSzArEx ;


 int Buf_Free (int *,int *) ;
 int IAlloc_Free (int *,int ) ;
 int SzArEx_Init (TYPE_1__*) ;
 int SzAr_Free (int *,int *) ;

void SzArEx_Free(CSzArEx *p, ISzAlloc *alloc)
{
   IAlloc_Free(alloc, p->FolderStartPackStreamIndex);
   IAlloc_Free(alloc, p->PackStreamStartPositions);
   IAlloc_Free(alloc, p->FolderStartFileIndex);
   IAlloc_Free(alloc, p->FileIndexToFolderIndexMap);

   IAlloc_Free(alloc, p->FileNameOffsets);
   Buf_Free(&p->FileNames, alloc);

   SzAr_Free(&p->db, alloc);
   SzArEx_Init(p);
}
