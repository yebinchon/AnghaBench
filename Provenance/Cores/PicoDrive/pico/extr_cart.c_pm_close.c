
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; TYPE_2__* file; struct TYPE_7__* param; } ;
typedef TYPE_1__ pm_file ;
typedef int gzFile ;
struct TYPE_8__ {int * fp; } ;
typedef TYPE_2__ ZIP ;


 int EOF ;
 scalar_t__ PMT_CSO ;
 scalar_t__ PMT_UNCOMPRESSED ;
 scalar_t__ PMT_ZIP ;
 int closezip (TYPE_2__*) ;
 int fclose (TYPE_2__*) ;
 int free (TYPE_1__*) ;
 int gzclose (int ) ;

int pm_close(pm_file *fp)
{
  int ret = 0;

  if (fp == ((void*)0)) return EOF;

  if (fp->type == PMT_UNCOMPRESSED)
  {
    fclose(fp->file);
  }
  else if (fp->type == PMT_ZIP)
  {
    ZIP *zipfile = fp->file;
    gzclose((gzFile) fp->param);
    zipfile->fp = ((void*)0);
    closezip(zipfile);
  }
  else if (fp->type == PMT_CSO)
  {
    free(fp->param);
    fclose(fp->file);
  }
  else
    ret = EOF;

  free(fp);
  return ret;
}
