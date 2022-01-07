
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
typedef int tmpbuf ;
struct TYPE_9__ {int file; } ;
struct TYPE_8__ {int offset; int filename; TYPE_3__ zipinfo; int pakfile; scalar_t__ zipfile; } ;
typedef TYPE_2__ quakefile_t ;
typedef int FILE ;


 int SEEK_CUR ;
 int SEEK_SET ;
 int * SafeOpenRead (int ) ;
 int SafeRead (int *,void*,int) ;
 int fclose (int *) ;
 int fseek (int *,int,int ) ;
 int unzClose (scalar_t__) ;
 int unzCloseCurrentFile (TYPE_3__*) ;
 scalar_t__ unzOpen (int ) ;
 int unzOpenCurrentFile (TYPE_3__*) ;
 int unzReadCurrentFile (TYPE_3__*,void*,int) ;

int ReadQuakeFile(quakefile_t *qf, void *buffer, int offset, int length)
{
 FILE *fp;
 int read;
 unzFile zf;
 char tmpbuf[1024];

 if (qf->zipfile)
 {

  zf = unzOpen(qf->pakfile);

  qf->zipinfo.file = ((unz_s *) zf)->file;

  unzOpenCurrentFile(&qf->zipinfo);

  while(offset > 0)
  {
   read = offset;
   if (read > sizeof(tmpbuf)) read = sizeof(tmpbuf);
   unzReadCurrentFile(&qf->zipinfo, tmpbuf, read);
   offset -= read;
  }

  length = unzReadCurrentFile(&qf->zipinfo, buffer, length);

  unzCloseCurrentFile(&qf->zipinfo);

  unzClose(zf);

  return length;
 }
 else
 {
  fp = SafeOpenRead(qf->filename);
  if (qf->offset) fseek(fp, qf->offset, SEEK_SET);
  if (offset) fseek(fp, offset, SEEK_CUR);
  SafeRead(fp, buffer, length);
  fclose(fp);

  return length;
 }
}
