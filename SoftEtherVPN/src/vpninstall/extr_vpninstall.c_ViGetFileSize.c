
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int FileSize; } ;
typedef TYPE_1__ VI_FILE ;
typedef int UINT ;



UINT ViGetFileSize(VI_FILE *f)
{

 if (f == ((void*)0))
 {
  return 0;
 }

 return f->FileSize;
}
