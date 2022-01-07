
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int WRes ;
struct TYPE_3__ {int file; int handle; } ;
typedef size_t DWORD ;
typedef TYPE_1__ CSzFile ;
typedef int BOOL ;


 int GetLastError () ;
 int ReadFile (int ,void*,size_t,size_t*,int *) ;
 int ferror (int ) ;
 size_t fread (void*,int,size_t,int ) ;
 size_t kChunkSizeMax ;

WRes File_Read(CSzFile *p, void *data, size_t *size)
{
   size_t originalSize = *size;
   if (originalSize == 0)
      return 0;
   *size = fread(data, 1, originalSize, p->file);
   if (*size == originalSize)
      return 0;
   return ferror(p->file);


}
