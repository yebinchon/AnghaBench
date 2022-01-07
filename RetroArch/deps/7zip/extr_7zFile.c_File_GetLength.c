
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int WRes ;
struct TYPE_3__ {int file; int handle; } ;
typedef int DWORD ;
typedef TYPE_1__ CSzFile ;


 int GetFileSize (int ,int*) ;
 int GetLastError () ;
 int NO_ERROR ;
 int SEEK_END ;
 int SEEK_SET ;
 int fseek (int ,long,int ) ;
 void* ftell (int ) ;

WRes File_GetLength(CSzFile *p, uint64_t *length)
{
   long pos = ftell(p->file);
   int res = fseek(p->file, 0, SEEK_END);
   *length = ftell(p->file);
   fseek(p->file, pos, SEEK_SET);
   return res;


}
