
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {char* data; } ;


 scalar_t__ strncasecompare (char*,char const*,size_t) ;

__attribute__((used)) static char *match_header(struct curl_slist *hdr, const char *lbl, size_t len)
{
  char *value = ((void*)0);

  if(strncasecompare(hdr->data, lbl, len) && hdr->data[len] == ':')
    for(value = hdr->data + len + 1; *value == ' '; value++)
      ;
  return value;
}
