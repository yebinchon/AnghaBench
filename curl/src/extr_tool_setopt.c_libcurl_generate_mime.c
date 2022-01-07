
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ subparts; } ;
typedef TYPE_1__ tool_mime ;
struct GlobalConfig {int dummy; } ;
typedef int CURLcode ;
typedef int CURL ;


 int CLEAN1 (char*,int) ;
 int CODE1 (char*,int) ;
 int CURLE_OK ;
 int DATA1 (char*,int) ;
 int DECL1 (char*,int) ;
 int easysrc_mime_count ;
 int libcurl_generate_mime_part (int *,struct GlobalConfig*,scalar_t__,int) ;

__attribute__((used)) static CURLcode libcurl_generate_mime(CURL *curl,
                                      struct GlobalConfig *config,
                                      tool_mime *toolmime,
                                      int *mimeno)
{
  CURLcode ret = CURLE_OK;


  *mimeno = ++easysrc_mime_count;
  DECL1("curl_mime *mime%d;", *mimeno);
  DATA1("mime%d = NULL;", *mimeno);
  CODE1("mime%d = curl_mime_init(hnd);", *mimeno);
  CLEAN1("curl_mime_free(mime%d);", *mimeno);
  CLEAN1("mime%d = NULL;", *mimeno);

  if(toolmime->subparts) {
    DECL1("curl_mimepart *part%d;", *mimeno);
    ret = libcurl_generate_mime_part(curl, config,
                                     toolmime->subparts, *mimeno);
  }

nomem:
  return ret;
}
