
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ curl_off_t ;
struct TYPE_5__ {struct TYPE_5__* nextpart; } ;
typedef TYPE_1__ curl_mimepart ;
struct TYPE_7__ {scalar_t__ state; } ;
struct TYPE_6__ {TYPE_3__ state; TYPE_1__* firstpart; } ;
typedef TYPE_2__ curl_mime ;


 int CURL_SEEKFUNC_CANTSEEK ;
 int CURL_SEEKFUNC_OK ;
 scalar_t__ MIMESTATE_BEGIN ;
 int SEEK_SET ;
 int mime_part_rewind (TYPE_1__*) ;
 int mimesetstate (TYPE_3__*,scalar_t__,int *) ;

__attribute__((used)) static int mime_subparts_seek(void *instream, curl_off_t offset, int whence)
{
  curl_mime *mime = (curl_mime *) instream;
  curl_mimepart *part;
  int result = CURL_SEEKFUNC_OK;

  if(whence != SEEK_SET || offset)
    return CURL_SEEKFUNC_CANTSEEK;

  if(mime->state.state == MIMESTATE_BEGIN)
   return CURL_SEEKFUNC_OK;

  for(part = mime->firstpart; part; part = part->nextpart) {
    int res = mime_part_rewind(part);
    if(res != CURL_SEEKFUNC_OK)
      result = res;
  }

  if(result == CURL_SEEKFUNC_OK)
    mimesetstate(&mime->state, MIMESTATE_BEGIN, ((void*)0));

  return result;
}
