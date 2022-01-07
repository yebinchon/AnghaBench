
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;
typedef int CURLcode ;


 int Curl_convert_to_network (struct Curl_easy*,char*,int) ;
 scalar_t__ Curl_isunreserved (unsigned char) ;
 char* Curl_saferealloc (char*,size_t) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int msnprintf (char*,int,char*,unsigned char) ;
 size_t strlen (char const*) ;

char *curl_easy_escape(struct Curl_easy *data, const char *string,
                       int inlength)
{
  size_t alloc;
  char *ns;
  char *testing_ptr = ((void*)0);
  size_t newlen;
  size_t strindex = 0;
  size_t length;
  CURLcode result;

  if(inlength < 0)
    return ((void*)0);

  alloc = (inlength?(size_t)inlength:strlen(string)) + 1;
  newlen = alloc;

  ns = malloc(alloc);
  if(!ns)
    return ((void*)0);

  length = alloc-1;
  while(length--) {
    unsigned char in = *string;

    if(Curl_isunreserved(in))

      ns[strindex++] = in;
    else {

      newlen += 2;
      if(newlen > alloc) {
        alloc *= 2;
        testing_ptr = Curl_saferealloc(ns, alloc);
        if(!testing_ptr)
          return ((void*)0);
        ns = testing_ptr;
      }

      result = Curl_convert_to_network(data, (char *)&in, 1);
      if(result) {

        free(ns);
        return ((void*)0);
      }

      msnprintf(&ns[strindex], 4, "%%%02X", in);

      strindex += 3;
    }
    string++;
  }
  ns[strindex] = 0;
  return ns;
}
