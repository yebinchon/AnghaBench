
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct curl_slist {char* data; int * next; } ;
struct TYPE_8__ {int state; scalar_t__ ptr; } ;
struct TYPE_7__ {int flags; scalar_t__ easy; TYPE_3__ state; int * fp; int kind; int encoder; int encstate; int * userheaders; int * curlheaders; } ;
typedef TYPE_1__ curl_mimepart ;
typedef scalar_t__ CURLcode ;




 scalar_t__ Curl_convert_to_network (scalar_t__,char*,int) ;
 int MIMEKIND_FILE ;







 int MIME_BODY_ONLY ;

 int cleanup_encoder_state (int *) ;
 int fclose (int *) ;
 int match_header (struct curl_slist*,char*,int) ;
 int mimesetstate (TYPE_3__*,int const,int *) ;
 size_t read_encoded_part_content (TYPE_1__*,char*,size_t) ;
 size_t read_part_content (TYPE_1__*,char*,size_t) ;
 size_t readback_bytes (TYPE_3__*,char*,size_t,char*,int,char*) ;
 int strlen (char*) ;

__attribute__((used)) static size_t readback_part(curl_mimepart *part,
                            char *buffer, size_t bufsize)
{
  size_t cursize = 0;






  while(bufsize) {
    size_t sz = 0;
    struct curl_slist *hdr = (struct curl_slist *) part->state.ptr;
    switch(part->state.state) {
    case 135:
      mimesetstate(&part->state,
                   (part->flags & MIME_BODY_ONLY)?
                     134: 132,
                   part->curlheaders);
      break;
    case 129:
      if(!hdr) {
        mimesetstate(&part->state, 130, ((void*)0));
        break;
      }
      if(match_header(hdr, "Content-Type", 12)) {
        mimesetstate(&part->state, 129, hdr->next);
        break;
      }

    case 132:
      if(!hdr)
        mimesetstate(&part->state, 129, part->userheaders);
      else {
        sz = readback_bytes(&part->state, buffer, bufsize,
                            hdr->data, strlen(hdr->data), "\r\n");
        if(!sz)
          mimesetstate(&part->state, part->state.state, hdr->next);
      }
      break;
    case 130:
      sz = readback_bytes(&part->state, buffer, bufsize, "\r\n", 2, "");
      if(!sz)
        mimesetstate(&part->state, 134, ((void*)0));
      break;
    case 134:
      cleanup_encoder_state(&part->encstate);
      mimesetstate(&part->state, 133, ((void*)0));
      break;
    case 133:
      if(part->encoder)
        sz = read_encoded_part_content(part, buffer, bufsize);
      else
        sz = read_part_content(part, buffer, bufsize);
      switch(sz) {
      case 0:
        mimesetstate(&part->state, 131, ((void*)0));

        if(part->kind == MIMEKIND_FILE && part->fp) {
          fclose(part->fp);
          part->fp = ((void*)0);
        }

      case 137:
      case 136:
      case 128:
        return cursize? cursize: sz;
      }
      break;
    case 131:
      return cursize;
    default:
      break;
    }


    cursize += sz;
    buffer += sz;
    bufsize -= sz;
  }
  return cursize;
}
