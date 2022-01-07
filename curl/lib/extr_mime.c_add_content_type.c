
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {int dummy; } ;
typedef int CURLcode ;


 int Curl_mime_add_header (struct curl_slist**,char*,char const*,char*,char const*) ;

__attribute__((used)) static CURLcode add_content_type(struct curl_slist **slp,
                                 const char *type, const char *boundary)
{
  return Curl_mime_add_header(slp, "Content-Type: %s%s%s", type,
                              boundary? "; boundary=": "",
                              boundary? boundary: "");
}
