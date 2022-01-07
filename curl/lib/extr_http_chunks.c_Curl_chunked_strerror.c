
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CHUNKcode ;
 int DEBUGASSERT (int ) ;

const char *Curl_chunked_strerror(CHUNKcode code)
{
  switch(code) {
  default:
    return "OK";
  case 128:
    return "Too long hexadecimal number";
  case 131:
    return "Illegal or missing hexadecimal sequence";
  case 133:
    return "Malformed encoding found";
  case 129:
    DEBUGASSERT(0);
    return "";
  case 132:
    return "Bad content-encoding found";
  case 130:
    return "Out of memory";
  }
}
