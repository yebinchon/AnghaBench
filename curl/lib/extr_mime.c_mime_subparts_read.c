
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* nextpart; } ;
typedef TYPE_1__ curl_mimepart ;
struct TYPE_9__ {int state; int offset; TYPE_1__* ptr; } ;
struct TYPE_8__ {char* boundary; scalar_t__ easy; TYPE_4__ state; TYPE_1__* firstpart; } ;
typedef TYPE_2__ curl_mime ;
typedef scalar_t__ CURLcode ;




 scalar_t__ Curl_convert_to_network (scalar_t__,char*,int) ;







 int mimesetstate (TYPE_4__*,int const,TYPE_1__*) ;
 size_t readback_bytes (TYPE_4__*,char*,size_t,char*,int,char*) ;
 size_t readback_part (TYPE_1__*,char*,size_t) ;
 int strlen (char*) ;

__attribute__((used)) static size_t mime_subparts_read(char *buffer, size_t size, size_t nitems,
                                 void *instream)
{
  curl_mime *mime = (curl_mime *) instream;
  size_t cursize = 0;




  (void) size;

  while(nitems) {
    size_t sz = 0;
    curl_mimepart *part = mime->state.ptr;
    switch(mime->state.state) {
    case 134:
    case 133:



      mimesetstate(&mime->state, 132, mime->firstpart);



      mime->state.offset += 2;
      break;
    case 132:
      sz = readback_bytes(&mime->state, buffer, nitems, "\r\n--", 4, "");
      if(!sz)
        mimesetstate(&mime->state, 131, part);
      break;
    case 131:
      sz = readback_bytes(&mime->state, buffer, nitems, mime->boundary,
                          strlen(mime->boundary), part? "\r\n": "--\r\n");
      if(!sz) {
        mimesetstate(&mime->state, 130, part);
      }
      break;
    case 130:
      if(!part) {
        mimesetstate(&mime->state, 129, ((void*)0));
        break;
      }
      sz = readback_part(part, buffer, nitems);
      switch(sz) {
      case 136:
      case 135:
      case 128:
        return cursize? cursize: sz;
      case 0:



        mimesetstate(&mime->state, 132, part->nextpart);
        break;
      }
      break;
    case 129:
      return cursize;
    default:
      break;
    }


    cursize += sz;
    buffer += sz;
    nitems -= sz;
  }
  return cursize;
}
