
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tmp ;
typedef int h ;
struct TYPE_8__ {TYPE_2__* CurrentFile; TYPE_6__* Fifo; int FileList; } ;
typedef TYPE_1__ ZIP_PACKER ;
struct TYPE_9__ {char* Name; int Crc32; void* HeaderPos; void* Attributes; scalar_t__ DateTime; void* Size; } ;
typedef TYPE_2__ ZIP_FILE ;
typedef char ZIP_DATA_HEADER ;
typedef scalar_t__ UINT64 ;
typedef void* UINT ;
struct TYPE_10__ {scalar_t__ total_write_size; } ;


 int Add (int ,TYPE_2__*) ;
 scalar_t__ IsEmptyStr (char*) ;
 scalar_t__ LocalTime64 () ;
 int MAX_PATH ;
 int ReplaceStrEx (char*,int,char*,char*,char*,int) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 int WriteFifo (TYPE_6__*,char*,int) ;
 int WriteZipDataHeader (TYPE_2__*,char*,int) ;
 int Zero (char*,int) ;
 TYPE_2__* ZeroMalloc (int) ;

void ZipAddFileStart(ZIP_PACKER *p, char *name, UINT size, UINT64 dt, UINT attribute)
{
 char tmp[MAX_PATH];
 ZIP_FILE *f;
 ZIP_DATA_HEADER h;

 if (p == ((void*)0) || IsEmptyStr(name))
 {
  return;
 }
 if (dt == 0)
 {
  dt = LocalTime64();
 }

 if (p->CurrentFile != ((void*)0))
 {
  return;
 }

 StrCpy(tmp, sizeof(tmp), name);
 ReplaceStrEx(tmp, sizeof(tmp), tmp, "/", "\\", 1);

 f = ZeroMalloc(sizeof(ZIP_FILE));

 StrCpy(f->Name, sizeof(f->Name), tmp);
 f->Size = size;
 f->DateTime = dt;
 f->Attributes = attribute;

 Add(p->FileList, f);

 Zero(&h, sizeof(h));
 f->HeaderPos = (UINT)p->Fifo->total_write_size;
 WriteZipDataHeader(f, &h, 0);
 WriteFifo(p->Fifo, &h, sizeof(h));
 WriteFifo(p->Fifo, f->Name, StrLen(f->Name));
 f->Crc32 = 0xffffffff;

 p->CurrentFile = f;
}
