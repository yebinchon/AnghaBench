
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct UrlState {int tempcount; TYPE_1__* tempwrite; } ;
struct SingleRequest {int keepon; } ;
struct Curl_easy {struct UrlState state; struct SingleRequest req; } ;
struct TYPE_2__ {int type; size_t len; char* buf; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 char* Curl_memdup (char const*,size_t) ;
 int DEBUGASSERT (int) ;
 int DEBUGF (int ) ;
 int FALSE ;
 int KEEP_RECV_PAUSE ;
 int TRUE ;
 int infof (struct Curl_easy*,char*,size_t,int) ;
 int memcpy (char*,char const*,size_t) ;
 char* realloc (char*,size_t) ;

__attribute__((used)) static CURLcode pausewrite(struct Curl_easy *data,
                           int type,
                           const char *ptr,
                           size_t len)
{



  struct SingleRequest *k = &data->req;
  struct UrlState *s = &data->state;
  char *dupl;
  unsigned int i;
  bool newtype = TRUE;

  if(s->tempcount) {
    for(i = 0; i< s->tempcount; i++) {
      if(s->tempwrite[i].type == type) {

        newtype = FALSE;
        break;
      }
    }
    DEBUGASSERT(i < 3);
  }
  else
    i = 0;

  if(!newtype) {



    size_t newlen = len + s->tempwrite[i].len;

    char *newptr = realloc(s->tempwrite[i].buf, newlen);
    if(!newptr)
      return CURLE_OUT_OF_MEMORY;

    memcpy(newptr + s->tempwrite[i].len, ptr, len);


    s->tempwrite[i].buf = newptr;
    s->tempwrite[i].len = newlen;
  }
  else {
    dupl = Curl_memdup(ptr, len);
    if(!dupl)
      return CURLE_OUT_OF_MEMORY;


    s->tempwrite[i].buf = dupl;
    s->tempwrite[i].len = len;
    s->tempwrite[i].type = type;

    if(newtype)
      s->tempcount++;
  }


  k->keepon |= KEEP_RECV_PAUSE;

  DEBUGF(infof(data, "Paused %zu bytes in buffer for type %02x\n",
               len, type));

  return CURLE_OK;
}
