
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; TYPE_3__* param; int file; } ;
typedef TYPE_2__ pm_file ;
typedef int gzFile ;
struct TYPE_5__ {int total_bytes; } ;
struct TYPE_7__ {long fpos_out; TYPE_1__ header; } ;
typedef TYPE_3__ cso_struct ;


 scalar_t__ PMT_CSO ;
 scalar_t__ PMT_UNCOMPRESSED ;
 scalar_t__ PMT_ZIP ;
 int PicoMessage (char*) ;



 int fseek (int ,long,int) ;
 int ftell (int ) ;
 int gzseek (int ,long,int) ;
 long gztell (int ) ;

int pm_seek(pm_file *stream, long offset, int whence)
{
  if (stream->type == PMT_UNCOMPRESSED)
  {
    fseek(stream->file, offset, whence);
    return ftell(stream->file);
  }
  else if (stream->type == PMT_ZIP)
  {
    if (PicoMessage != ((void*)0) && offset > 6*1024*1024) {
      long pos = gztell((gzFile) stream->param);
      if (offset < pos || offset - pos > 6*1024*1024)
        PicoMessage("Decompressing data...");
    }
    return gzseek((gzFile) stream->param, offset, whence);
  }
  else if (stream->type == PMT_CSO)
  {
    cso_struct *cso = stream->param;
    switch (whence)
    {
      case 130: cso->fpos_out += offset; break;
      case 128: cso->fpos_out = offset; break;
      case 129: cso->fpos_out = cso->header.total_bytes - offset; break;
    }
    return cso->fpos_out;
  }
  else
    return -1;
}
