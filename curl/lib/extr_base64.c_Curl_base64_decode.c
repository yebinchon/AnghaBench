
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;


 int CURLE_BAD_CONTENT_ENCODING ;
 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 size_t decodeQuantum (unsigned char*,char const*) ;
 int free (unsigned char*) ;
 unsigned char* malloc (size_t) ;
 size_t strlen (char const*) ;

CURLcode Curl_base64_decode(const char *src,
                            unsigned char **outptr, size_t *outlen)
{
  size_t srclen = 0;
  size_t length = 0;
  size_t padding = 0;
  size_t i;
  size_t numQuantums;
  size_t rawlen = 0;
  unsigned char *pos;
  unsigned char *newstr;

  *outptr = ((void*)0);
  *outlen = 0;
  srclen = strlen(src);


  if(!srclen || srclen % 4)
    return CURLE_BAD_CONTENT_ENCODING;


  while((src[length] != '=') && src[length])
    length++;


  if(src[length] == '=') {
    padding++;
    if(src[length + 1] == '=')
      padding++;
  }


  if(length + padding != srclen)
    return CURLE_BAD_CONTENT_ENCODING;


  numQuantums = srclen / 4;


  rawlen = (numQuantums * 3) - padding;


  newstr = malloc(rawlen + 1);
  if(!newstr)
    return CURLE_OUT_OF_MEMORY;

  pos = newstr;


  for(i = 0; i < numQuantums; i++) {
    size_t result = decodeQuantum(pos, src);
    if(!result) {
      free(newstr);

      return CURLE_BAD_CONTENT_ENCODING;
    }

    pos += result;
    src += 4;
  }


  *pos = '\0';


  *outptr = newstr;
  *outlen = rawlen;

  return CURLE_OK;
}
