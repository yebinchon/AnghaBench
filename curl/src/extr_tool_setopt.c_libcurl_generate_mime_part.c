
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* filename; int kind; char const* data; char const* encoder; char const* name; char const* type; scalar_t__ headers; struct TYPE_4__* prev; } ;
typedef TYPE_1__ tool_mime ;
struct GlobalConfig {int dummy; } ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 int CODE0 (char*) ;
 int CODE1 (char*,...) ;
 int CODE2 (char*,int,...) ;
 scalar_t__ CURLE_OK ;
 int CURL_ZERO_TERMINATED ;
 int Curl_safefree (char*) ;
 int NULL_CHECK (char*) ;






 char* c_escape (char const*,int ) ;
 scalar_t__ convert_to_network (char*,size_t) ;
 int free (char*) ;
 scalar_t__ libcurl_generate_mime (int *,struct GlobalConfig*,TYPE_1__*,int*) ;
 scalar_t__ libcurl_generate_slist (scalar_t__,int*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static CURLcode libcurl_generate_mime_part(CURL *curl,
                                           struct GlobalConfig *config,
                                           tool_mime *part,
                                           int mimeno)
{
  CURLcode ret = CURLE_OK;
  int submimeno = 0;
  char *escaped = ((void*)0);
  const char *data = ((void*)0);
  const char *filename = part->filename;


  if(part->prev) {
    ret = libcurl_generate_mime_part(curl, config, part->prev, mimeno);
    if(ret)
      return ret;
  }


  CODE2("part%d = curl_mime_addpart(mime%d);", mimeno, mimeno);

  switch(part->kind) {
  case 130:
    ret = libcurl_generate_mime(curl, config, part, &submimeno);
    if(!ret) {
      CODE2("curl_mime_subparts(part%d, mime%d);", mimeno, submimeno);
      CODE1("mime%d = NULL;", submimeno);
    }
    break;

  case 133:
    data = part->data;

    if(!ret) {
      Curl_safefree(escaped);
      escaped = c_escape(data, CURL_ZERO_TERMINATED);
      NULL_CHECK(escaped);
      CODE2("curl_mime_data(part%d, \"%s\", CURL_ZERO_TERMINATED);",
                            mimeno, escaped);
    }
    break;

  case 132:
  case 131:
    escaped = c_escape(part->data, CURL_ZERO_TERMINATED);
    NULL_CHECK(escaped);
    CODE2("curl_mime_filedata(part%d, \"%s\");", mimeno, escaped);
    if(part->kind == 131 && !filename) {
      CODE1("curl_mime_filename(part%d, NULL);", mimeno);
    }
    break;

  case 129:
    if(!filename)
      filename = "-";

  case 128:

    CODE1("curl_mime_data_cb(part%d, -1, (curl_read_callback) fread, \\",
          mimeno);
    CODE0("                  (curl_seek_callback) fseek, NULL, stdin);");
    break;
  default:

    break;
  }

  if(!ret && part->encoder) {
    Curl_safefree(escaped);
    escaped = c_escape(part->encoder, CURL_ZERO_TERMINATED);
    NULL_CHECK(escaped);
    CODE2("curl_mime_encoder(part%d, \"%s\");", mimeno, escaped);
  }

  if(!ret && filename) {
    Curl_safefree(escaped);
    escaped = c_escape(filename, CURL_ZERO_TERMINATED);
    NULL_CHECK(escaped);
    CODE2("curl_mime_filename(part%d, \"%s\");", mimeno, escaped);
  }

  if(!ret && part->name) {
    Curl_safefree(escaped);
    escaped = c_escape(part->name, CURL_ZERO_TERMINATED);
    NULL_CHECK(escaped);
    CODE2("curl_mime_name(part%d, \"%s\");", mimeno, escaped);
  }

  if(!ret && part->type) {
    Curl_safefree(escaped);
    escaped = c_escape(part->type, CURL_ZERO_TERMINATED);
    NULL_CHECK(escaped);
    CODE2("curl_mime_type(part%d, \"%s\");", mimeno, escaped);
  }

  if(!ret && part->headers) {
    int slistno;

    ret = libcurl_generate_slist(part->headers, &slistno);
    if(!ret) {
      CODE2("curl_mime_headers(part%d, slist%d, 1);", mimeno, slistno);
      CODE1("slist%d = NULL;", slistno);
    }
  }

nomem:





  Curl_safefree(escaped);
  return ret;
}
