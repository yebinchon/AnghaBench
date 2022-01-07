
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int file; } ;
typedef TYPE_1__ unz_s ;
typedef scalar_t__ unzFile ;
struct TYPE_9__ {int file; } ;
struct TYPE_8__ {int length; int offset; int filename; TYPE_3__ zipinfo; int pakfile; scalar_t__ zipfile; } ;
typedef TYPE_2__ quakefile_t ;
typedef int FILE ;


 void* GetMemory (int) ;
 int Q_filelength (int *) ;
 int SEEK_SET ;
 int * SafeOpenRead (int ) ;
 int SafeRead (int *,void*,int) ;
 int fclose (int *) ;
 int fseek (int *,int ,int ) ;
 int unzClose (scalar_t__) ;
 int unzCloseCurrentFile (TYPE_3__*) ;
 scalar_t__ unzOpen (int ) ;
 int unzOpenCurrentFile (TYPE_3__*) ;
 int unzReadCurrentFile (TYPE_3__*,void*,int) ;

int LoadQuakeFile(quakefile_t *qf, void **bufferptr)
{
 FILE *fp;
 void *buffer;
 int length;
 unzFile zf;

 if (qf->zipfile)
 {

  zf = unzOpen(qf->pakfile);

  qf->zipinfo.file = ((unz_s *) zf)->file;

  unzOpenCurrentFile(&qf->zipinfo);

  length = qf->length;
  buffer = GetMemory(length+1);

  length = unzReadCurrentFile(&qf->zipinfo, buffer, length);

  unzCloseCurrentFile(&qf->zipinfo);

  unzClose(zf);

  *bufferptr = buffer;
  return length;
 }
 else
 {
  fp = SafeOpenRead(qf->filename);
  if (qf->offset) fseek(fp, qf->offset, SEEK_SET);
  length = qf->length;
  if (!length) length = Q_filelength(fp);
  buffer = GetMemory(length+1);
  ((char *)buffer)[length] = 0;
  SafeRead(fp, buffer, length);
  fclose(fp);

  *bufferptr = buffer;
  return length;
 }
}
