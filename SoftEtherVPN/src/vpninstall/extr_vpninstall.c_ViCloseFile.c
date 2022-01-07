
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int InternetFile; int hInternet; int hHttpFile; int io; } ;
typedef TYPE_1__ VI_FILE ;


 int FileClose (int ) ;
 int Free (TYPE_1__*) ;
 int InternetCloseHandle (int ) ;

void ViCloseFile(VI_FILE *f)
{

 if (f == ((void*)0))
 {
  return;
 }

 if (f->InternetFile == 0)
 {
  FileClose(f->io);
 }
 else
 {
  InternetCloseHandle(f->hHttpFile);
  InternetCloseHandle(f->hInternet);
 }

 Free(f);
}
