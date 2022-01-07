
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int localkey_t ;


 char* Curl_thread_buffer (int ,int) ;
 int MAX_CONV_EXPANSION ;
 int QadrtConvertE2A (char*,char const*,int,int) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
set_thread_string(localkey_t key, const char * s)

{
  int i;
  char * cp;

  if(!s)
    return (char *) ((void*)0);

  i = strlen(s) + 1;
  cp = Curl_thread_buffer(key, MAX_CONV_EXPANSION * i + 1);

  if(cp) {
    i = QadrtConvertE2A(cp, s, MAX_CONV_EXPANSION * i, i);
    cp[i] = '\0';
  }

  return cp;
}
