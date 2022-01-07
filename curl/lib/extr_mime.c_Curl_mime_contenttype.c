
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ctts ;


 scalar_t__ strcasecompare (char const*,char const*) ;
 size_t strlen (char const*) ;

const char *Curl_mime_contenttype(const char *filename)
{




  struct ContentType {
    const char *extension;
    const char *type;
  };
  static const struct ContentType ctts[] = {
    {".gif", "image/gif"},
    {".jpg", "image/jpeg"},
    {".jpeg", "image/jpeg"},
    {".png", "image/png"},
    {".svg", "image/svg+xml"},
    {".txt", "text/plain"},
    {".htm", "text/html"},
    {".html", "text/html"},
    {".pdf", "application/pdf"},
    {".xml", "application/xml"}
  };

  if(filename) {
    size_t len1 = strlen(filename);
    const char *nameend = filename + len1;
    unsigned int i;

    for(i = 0; i < sizeof(ctts) / sizeof(ctts[0]); i++) {
      size_t len2 = strlen(ctts[i].extension);

      if(len1 >= len2 && strcasecompare(nameend - len2, ctts[i].extension))
          return ctts[i].type;
    }
  }
  return ((void*)0);
}
