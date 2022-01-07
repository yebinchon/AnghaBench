
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file; } ;
typedef int SRes ;
typedef TYPE_1__ CFileInStream ;


 scalar_t__ File_Read (int *,void*,size_t*) ;
 int SZ_ERROR_READ ;
 int SZ_OK ;

__attribute__((used)) static SRes FileInStream_Read(void *pp, void *buf, size_t *size)
{
   CFileInStream *p = (CFileInStream *)pp;
   return (File_Read(&p->file, buf, size) == 0) ? SZ_OK : SZ_ERROR_READ;
}
