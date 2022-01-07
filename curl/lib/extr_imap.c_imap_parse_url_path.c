
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct IMAP {char* mailbox; char* uidvalidity; char* uid; char* mindex; char* section; char* partial; int query; } ;
struct TYPE_5__ {char* path; } ;
struct TYPE_6__ {int uh; TYPE_2__ up; } ;
struct TYPE_4__ {struct IMAP* protop; } ;
struct Curl_easy {TYPE_3__ state; TYPE_1__ req; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_URL_MALFORMAT ;
 int CURLUPART_QUERY ;
 int CURLU_URLDECODE ;
 scalar_t__ Curl_urldecode (struct Curl_easy*,char const*,int,char**,size_t*,int ) ;
 int DEBUGF (int ) ;
 int TRUE ;
 int curl_url_get (int ,int ,int *,int ) ;
 int free (char*) ;
 scalar_t__ imap_is_bchar (char const) ;
 int infof (struct Curl_easy*,char*,char*,char*) ;
 scalar_t__ strcasecompare (char*,char*) ;

__attribute__((used)) static CURLcode imap_parse_url_path(struct connectdata *conn)
{

  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct IMAP *imap = data->req.protop;
  const char *begin = &data->state.up.path[1];
  const char *ptr = begin;


  while(imap_is_bchar(*ptr))
    ptr++;

  if(ptr != begin) {

    const char *end = ptr;
    if(end > begin && end[-1] == '/')
      end--;

    result = Curl_urldecode(data, begin, end - begin, &imap->mailbox, ((void*)0),
                            TRUE);
    if(result)
      return result;
  }
  else
    imap->mailbox = ((void*)0);


  while(*ptr == ';') {
    char *name;
    char *value;
    size_t valuelen;


    begin = ++ptr;
    while(*ptr && *ptr != '=')
      ptr++;

    if(!*ptr)
      return CURLE_URL_MALFORMAT;


    result = Curl_urldecode(data, begin, ptr - begin, &name, ((void*)0), TRUE);
    if(result)
      return result;


    begin = ++ptr;
    while(imap_is_bchar(*ptr))
      ptr++;


    result = Curl_urldecode(data, begin, ptr - begin, &value, &valuelen, TRUE);
    if(result) {
      free(name);
      return result;
    }

    DEBUGF(infof(conn->data, "IMAP URL parameter '%s' = '%s'\n", name, value));





    if(strcasecompare(name, "UIDVALIDITY") && !imap->uidvalidity) {
      if(valuelen > 0 && value[valuelen - 1] == '/')
        value[valuelen - 1] = '\0';

      imap->uidvalidity = value;
      value = ((void*)0);
    }
    else if(strcasecompare(name, "UID") && !imap->uid) {
      if(valuelen > 0 && value[valuelen - 1] == '/')
        value[valuelen - 1] = '\0';

      imap->uid = value;
      value = ((void*)0);
    }
    else if(strcasecompare(name, "MAILINDEX") && !imap->mindex) {
      if(valuelen > 0 && value[valuelen - 1] == '/')
        value[valuelen - 1] = '\0';

      imap->mindex = value;
      value = ((void*)0);
    }
    else if(strcasecompare(name, "SECTION") && !imap->section) {
      if(valuelen > 0 && value[valuelen - 1] == '/')
        value[valuelen - 1] = '\0';

      imap->section = value;
      value = ((void*)0);
    }
    else if(strcasecompare(name, "PARTIAL") && !imap->partial) {
      if(valuelen > 0 && value[valuelen - 1] == '/')
        value[valuelen - 1] = '\0';

      imap->partial = value;
      value = ((void*)0);
    }
    else {
      free(name);
      free(value);

      return CURLE_URL_MALFORMAT;
    }

    free(name);
    free(value);
  }



  if(imap->mailbox && !imap->uid && !imap->mindex) {

    (void)curl_url_get(data->state.uh, CURLUPART_QUERY, &imap->query,
                       CURLU_URLDECODE);
  }


  if(*ptr)
    return CURLE_URL_MALFORMAT;

  return CURLE_OK;
}
