
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct IMAP {char* custom; int custom_params; } ;
struct TYPE_4__ {char** str; } ;
struct TYPE_3__ {struct IMAP* protop; } ;
struct Curl_easy {TYPE_2__ set; TYPE_1__ req; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 scalar_t__ Curl_urldecode (struct Curl_easy*,char const*,int ,char**,int *,int ) ;
 size_t STRING_CUSTOMREQUEST ;
 int TRUE ;
 int strdup (char const*) ;

__attribute__((used)) static CURLcode imap_parse_custom_request(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct IMAP *imap = data->req.protop;
  const char *custom = data->set.str[STRING_CUSTOMREQUEST];

  if(custom) {

    result = Curl_urldecode(data, custom, 0, &imap->custom, ((void*)0), TRUE);


    if(!result) {
      const char *params = imap->custom;

      while(*params && *params != ' ')
        params++;

      if(*params) {
        imap->custom_params = strdup(params);
        imap->custom[params - imap->custom] = '\0';

        if(!imap->custom_params)
          result = CURLE_OUT_OF_MEMORY;
      }
    }
  }

  return result;
}
