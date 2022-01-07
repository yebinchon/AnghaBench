
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct curl_slist {int dummy; } ;
struct TYPE_19__ {int kind; int filename; int name; int mimetype; int encoder; scalar_t__ userheaders; struct TYPE_19__* nextpart; scalar_t__ arg; int easy; int freefunc; int seekfunc; int readfunc; int datasize; int data; } ;
typedef TYPE_1__ curl_mimepart ;
struct TYPE_20__ {TYPE_1__* firstpart; } ;
typedef TYPE_2__ curl_mime ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_BAD_FUNCTION_ARGUMENT ;
 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 scalar_t__ CURLE_READ_ERROR ;
 int Curl_mime_cleanpart (TYPE_1__*) ;
 struct curl_slist* Curl_slist_duplicate (scalar_t__) ;
 int DEBUGASSERT (TYPE_1__*) ;





 int TRUE ;
 TYPE_1__* curl_mime_addpart (TYPE_2__*) ;
 scalar_t__ curl_mime_data (TYPE_1__*,int ,size_t) ;
 scalar_t__ curl_mime_data_cb (TYPE_1__*,int ,int ,int ,int ,scalar_t__) ;
 scalar_t__ curl_mime_filedata (TYPE_1__*,int ) ;
 scalar_t__ curl_mime_filename (TYPE_1__*,int ) ;
 scalar_t__ curl_mime_headers (TYPE_1__*,struct curl_slist*,int ) ;
 TYPE_2__* curl_mime_init (int ) ;
 scalar_t__ curl_mime_name (TYPE_1__*,int ) ;
 scalar_t__ curl_mime_subparts (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ curl_mime_type (TYPE_1__*,int ) ;
 int curl_slist_free_all (struct curl_slist*) ;

CURLcode Curl_mime_duppart(curl_mimepart *dst, const curl_mimepart *src)
{
  curl_mime *mime;
  curl_mimepart *d;
  const curl_mimepart *s;
  CURLcode res = CURLE_OK;

  DEBUGASSERT(dst);


  switch(src->kind) {
  case 128:
    break;
  case 131:
    res = curl_mime_data(dst, src->data, (size_t) src->datasize);
    break;
  case 130:
    res = curl_mime_filedata(dst, src->data);

    if(res == CURLE_READ_ERROR)
      res = CURLE_OK;
    break;
  case 132:
    res = curl_mime_data_cb(dst, src->datasize, src->readfunc,
                            src->seekfunc, src->freefunc, src->arg);
    break;
  case 129:


    mime = curl_mime_init(dst->easy);
    res = mime? curl_mime_subparts(dst, mime): CURLE_OUT_OF_MEMORY;


    for(s = ((curl_mime *) src->arg)->firstpart; !res && s; s = s->nextpart) {
      d = curl_mime_addpart(mime);
      res = d? Curl_mime_duppart(d, s): CURLE_OUT_OF_MEMORY;
    }
    break;
  default:
    res = CURLE_BAD_FUNCTION_ARGUMENT;
    break;
  }


  if(!res && src->userheaders) {
    struct curl_slist *hdrs = Curl_slist_duplicate(src->userheaders);

    if(!hdrs)
      res = CURLE_OUT_OF_MEMORY;
    else {


      res = curl_mime_headers(dst, hdrs, TRUE);
      if(res)
        curl_slist_free_all(hdrs);
    }
  }

  if(!res) {

    dst->encoder = src->encoder;
    res = curl_mime_type(dst, src->mimetype);
  }
  if(!res)
    res = curl_mime_name(dst, src->name);
  if(!res)
    res = curl_mime_filename(dst, src->filename);


  if(res)
    Curl_mime_cleanpart(dst);

  return res;
}
