
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ Curl_base64_decode (char*,unsigned char**,size_t*) ;
 int GPE_OK ;
 int GPE_OUT_OF_MEMORY ;
 int free (unsigned char*) ;
 int memcpy (char*,unsigned char*,size_t) ;

__attribute__((used)) static int decodedata(char **buf,
                      size_t *len)
{
  CURLcode error = CURLE_OK;
  unsigned char *buf64 = ((void*)0);
  size_t src_len = 0;

  if(!*len)
    return GPE_OK;


  error = Curl_base64_decode(*buf, &buf64, &src_len);
  if(error)
    return GPE_OUT_OF_MEMORY;

  if(!src_len) {






    free(buf64);

    return GPE_OUT_OF_MEMORY;
  }


  memcpy(*buf, buf64, src_len);
  *len = src_len;
  *(*buf + src_len) = '\0';

  free(buf64);

  return GPE_OK;
}
