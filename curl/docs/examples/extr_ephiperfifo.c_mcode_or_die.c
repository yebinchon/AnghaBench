
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLMcode ;


 int CURLM_BAD_EASY_HANDLE ;
 int CURLM_BAD_HANDLE ;
 int CURLM_BAD_SOCKET ;
 int CURLM_INTERNAL_ERROR ;
 int CURLM_LAST ;
 scalar_t__ CURLM_OK ;
 int CURLM_OUT_OF_MEMORY ;
 int CURLM_UNKNOWN_OPTION ;
 int MSG_OUT ;
 int exit (scalar_t__) ;
 int fprintf (int ,char*,char const*,char const*) ;
 int mycase (int ) ;

__attribute__((used)) static void mcode_or_die(const char *where, CURLMcode code)
{
  if(CURLM_OK != code) {
    const char *s;
    switch(code) {
      mycase(CURLM_BAD_HANDLE); break;
      mycase(CURLM_BAD_EASY_HANDLE); break;
      mycase(CURLM_OUT_OF_MEMORY); break;
      mycase(CURLM_INTERNAL_ERROR); break;
      mycase(CURLM_UNKNOWN_OPTION); break;
      mycase(CURLM_LAST); break;
      default: s = "CURLM_unknown"; break;
      mycase(CURLM_BAD_SOCKET);
      fprintf(MSG_OUT, "ERROR: %s returns %s\n", where, s);

      return;
    }
    fprintf(MSG_OUT, "ERROR: %s returns %s\n", where, s);
    exit(code);
  }
}
