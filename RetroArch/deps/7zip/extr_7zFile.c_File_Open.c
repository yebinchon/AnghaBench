
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WRes ;
struct TYPE_3__ {scalar_t__ handle; scalar_t__ file; } ;
typedef TYPE_1__ CSzFile ;


 int CREATE_ALWAYS ;
 scalar_t__ CreateFileA (char const*,int ,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int errno ;
 scalar_t__ fopen (char const*,char*) ;

__attribute__((used)) static WRes File_Open(CSzFile *p, const char *name, int writeMode)
{
   p->file = fopen(name, writeMode ? "wb+" : "rb");
   return (p->file != 0) ? 0 :



   errno;


}
