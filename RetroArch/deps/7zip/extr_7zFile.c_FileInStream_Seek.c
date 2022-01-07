
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_2__ {int file; } ;
typedef int SRes ;
typedef int ESzSeek ;
typedef TYPE_1__ CFileInStream ;


 int File_Seek (int *,int *,int ) ;

__attribute__((used)) static SRes FileInStream_Seek(void *pp, int64_t *pos, ESzSeek origin)
{
   CFileInStream *p = (CFileInStream *)pp;
   return File_Seek(&p->file, pos, origin);
}
