
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_forms {scalar_t__ value; int option; } ;


 scalar_t__ Curl_is_formadd_string (int ) ;
 int free (char*) ;

__attribute__((used)) static void
Curl_formadd_release_local(struct curl_forms * forms, int nargs, int skip)

{
  while(nargs--)
    if(nargs != skip)
      if(Curl_is_formadd_string(forms[nargs].option))
        if(forms[nargs].value)
          free((char *) forms[nargs].value);

  free((char *) forms);
}
