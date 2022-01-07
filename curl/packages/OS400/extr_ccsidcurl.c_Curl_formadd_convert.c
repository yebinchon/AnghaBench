
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_forms {char* value; } ;


 int ASCII_CCSID ;
 int MAX_CONV_EXPANSION ;
 int convert (char*,int,int ,char*,int,unsigned int) ;
 int free (char*) ;
 char* malloc (int) ;
 char* realloc (char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int
Curl_formadd_convert(struct curl_forms * forms,
                     int formx, int lengthx, unsigned int ccsid)

{
  int l;
  char *cp;
  char *cp2;

  if(formx < 0 || !forms[formx].value)
    return 0;

  if(lengthx >= 0)
    l = (int) forms[lengthx].value;
  else
    l = strlen(forms[formx].value) + 1;

  cp = malloc(MAX_CONV_EXPANSION * l);

  if(!cp)
    return -1;

  l = convert(cp, MAX_CONV_EXPANSION * l, ASCII_CCSID,
              forms[formx].value, l, ccsid);

  if(l < 0) {
    free(cp);
    return -1;
    }

  cp2 = realloc(cp, l);

  if(cp2)
    cp = cp2;

  forms[formx].value = cp;

  if(lengthx >= 0)
    forms[lengthx].value = (char *) l;

  return l;
}
