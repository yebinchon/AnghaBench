
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLMcode ;







 scalar_t__ CURLM_OK ;


 int MSG_OUT (char*,char const*,char const*) ;
 int exit (scalar_t__) ;

__attribute__((used)) static void mcode_or_die(const char *where, CURLMcode code)
{
  if(CURLM_OK != code) {
    const char *s;
    switch(code) {
    case 133: s = "CURLM_BAD_HANDLE"; break;
    case 134: s = "CURLM_BAD_EASY_HANDLE"; break;
    case 129: s = "CURLM_OUT_OF_MEMORY"; break;
    case 131: s = "CURLM_INTERNAL_ERROR"; break;
    case 132: s = "CURLM_BAD_SOCKET"; break;
    case 128: s = "CURLM_UNKNOWN_OPTION"; break;
    case 130: s = "CURLM_LAST"; break;
    default: s = "CURLM_unknown";
    }
    MSG_OUT("ERROR: %s returns %s\n", where, s);
    exit(code);
  }
}
