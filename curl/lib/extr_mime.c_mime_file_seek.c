
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ curl_off_t ;
struct TYPE_3__ {int fp; } ;
typedef TYPE_1__ curl_mimepart ;


 int CURL_SEEKFUNC_CANTSEEK ;
 int CURL_SEEKFUNC_FAIL ;
 int CURL_SEEKFUNC_OK ;
 int SEEK_SET ;
 scalar_t__ fseek (int ,long,int) ;
 scalar_t__ mime_open_file (TYPE_1__*) ;

__attribute__((used)) static int mime_file_seek(void *instream, curl_off_t offset, int whence)
{
  curl_mimepart *part = (curl_mimepart *) instream;

  if(whence == SEEK_SET && !offset && !part->fp)
    return CURL_SEEKFUNC_OK;

  if(mime_open_file(part))
    return CURL_SEEKFUNC_FAIL;

  return fseek(part->fp, (long) offset, whence)?
               CURL_SEEKFUNC_CANTSEEK: CURL_SEEKFUNC_OK;
}
