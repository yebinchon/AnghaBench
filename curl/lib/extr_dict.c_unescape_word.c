
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ Curl_urldecode (struct Curl_easy*,char const*,int ,char**,size_t*,int ) ;
 int FALSE ;
 int free (char*) ;
 char* malloc (size_t) ;

__attribute__((used)) static char *unescape_word(struct Curl_easy *data, const char *inputbuff)
{
  char *newp = ((void*)0);
  char *dictp;
  size_t len;

  CURLcode result = Curl_urldecode(data, inputbuff, 0, &newp, &len, FALSE);
  if(!newp || result)
    return ((void*)0);

  dictp = malloc(len*2 + 1);
  if(dictp) {
    char *ptr;
    char ch;
    int olen = 0;


    for(ptr = newp;
        (ch = *ptr) != 0;
        ptr++) {
      if((ch <= 32) || (ch == 127) ||
          (ch == '\'') || (ch == '\"') || (ch == '\\')) {
        dictp[olen++] = '\\';
      }
      dictp[olen++] = ch;
    }
    dictp[olen] = 0;
  }
  free(newp);
  return dictp;
}
