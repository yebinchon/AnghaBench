
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct curl_httppost {int contentslength; int flags; int contentlen; int bufferlength; void* userp; int * showfilename; struct curl_httppost* more; int contents; int buffer; int namelength; int name; scalar_t__ contenttype; int contentheader; struct curl_httppost* next; } ;
struct Curl_easy {int dummy; } ;
typedef int ssize_t ;
typedef int curl_read_callback ;
typedef int curl_off_t ;
struct TYPE_13__ {scalar_t__ datasize; int data; } ;
typedef TYPE_1__ curl_mimepart ;
typedef int curl_mime ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 int * CURLX_FUNCTION_CAST (int ,int ) ;
 int CURL_HTTPPOST_LARGE ;
 scalar_t__ Curl_convert_to_network (struct Curl_easy*,int ,scalar_t__) ;
 int Curl_mime_cleanpart (TYPE_1__*) ;
 int HTTPPOST_BUFFER ;
 int HTTPPOST_CALLBACK ;
 int HTTPPOST_FILENAME ;
 int HTTPPOST_READFILE ;
 TYPE_1__* curl_mime_addpart (int *) ;
 scalar_t__ curl_mime_data (TYPE_1__*,int ,int) ;
 scalar_t__ curl_mime_data_cb (TYPE_1__*,int,int ,int *,int *,void*) ;
 scalar_t__ curl_mime_filedata (TYPE_1__*,int ) ;
 scalar_t__ curl_mime_filename (TYPE_1__*,int *) ;
 scalar_t__ curl_mime_headers (TYPE_1__*,int ,int ) ;
 int * curl_mime_init (struct Curl_easy*) ;
 scalar_t__ curl_mime_subparts (TYPE_1__*,int *) ;
 scalar_t__ curl_mime_type (TYPE_1__*,scalar_t__) ;
 int curl_seek_callback ;
 scalar_t__ fread ;
 int fseek ;
 scalar_t__ setname (TYPE_1__*,int ,int ) ;
 scalar_t__ stdin ;
 int strcmp (int ,char*) ;

CURLcode Curl_getformdata(struct Curl_easy *data,
                          curl_mimepart *finalform,
                          struct curl_httppost *post,
                          curl_read_callback fread_func)
{
  CURLcode result = CURLE_OK;
  curl_mime *form = ((void*)0);
  curl_mimepart *part;
  struct curl_httppost *file;

  Curl_mime_cleanpart(finalform);

  if(!post)
    return result;

  form = curl_mime_init(data);
  if(!form)
    result = CURLE_OUT_OF_MEMORY;

  if(!result)
    result = curl_mime_subparts(finalform, form);


  for(; !result && post; post = post->next) {

    curl_mime *multipart = form;
    if(post->more) {
      part = curl_mime_addpart(form);
      if(!part)
        result = CURLE_OUT_OF_MEMORY;
      if(!result)
        result = setname(part, post->name, post->namelength);
      if(!result) {
        multipart = curl_mime_init(data);
        if(!multipart)
          result = CURLE_OUT_OF_MEMORY;
      }
      if(!result)
        result = curl_mime_subparts(part, multipart);
    }


    for(file = post; !result && file; file = file->more) {

      part = curl_mime_addpart(multipart);
      if(!part)
        result = CURLE_OUT_OF_MEMORY;


      if(!result)
        result = curl_mime_headers(part, file->contentheader, 0);


      if(!result && file->contenttype)
        result = curl_mime_type(part, file->contenttype);


      if(!result && !post->more)
        result = setname(part, post->name, post->namelength);


      if(!result) {
        curl_off_t clen = post->contentslength;

        if(post->flags & CURL_HTTPPOST_LARGE)
          clen = post->contentlen;
        if(!clen)
          clen = -1;

        if(post->flags & (HTTPPOST_FILENAME | HTTPPOST_READFILE)) {
          if(!strcmp(file->contents, "-")) {




            result = curl_mime_data_cb(part, (curl_off_t) -1,
                                       (curl_read_callback) fread,
                                       CURLX_FUNCTION_CAST(curl_seek_callback,
                                                           fseek),
                                       ((void*)0), (void *) stdin);
          }
          else
            result = curl_mime_filedata(part, file->contents);
          if(!result && (post->flags & HTTPPOST_READFILE))
            result = curl_mime_filename(part, ((void*)0));
        }
        else if(post->flags & HTTPPOST_BUFFER)
          result = curl_mime_data(part, post->buffer,
                                  post->bufferlength? post->bufferlength: -1);
        else if(post->flags & HTTPPOST_CALLBACK)


          result = curl_mime_data_cb(part, clen,
                                     fread_func, ((void*)0), ((void*)0), post->userp);
        else {
          result = curl_mime_data(part, post->contents, (ssize_t) clen);





        }
      }


      if(!result && post->showfilename)
        if(post->more || (post->flags & (HTTPPOST_FILENAME | HTTPPOST_BUFFER |
                                        HTTPPOST_CALLBACK)))
          result = curl_mime_filename(part, post->showfilename);
    }
  }

  if(result)
    Curl_mime_cleanpart(finalform);

  return result;
}
