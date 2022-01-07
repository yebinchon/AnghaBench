
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIGIT ;
 int LETTER ;
 size_t* cp ;
 int error (char*,int,char*,char*) ;
 int* map ;
 int token ;

__attribute__((used)) static void ppnumber(char *which) {
 unsigned char *rcp = cp--;

 for ( ; (map[*cp]&(DIGIT|LETTER)) || *cp == '.'; cp++)
  if ((cp[0] == 'E' || cp[0] == 'e')
  && (cp[1] == '-' || cp[1] == '+'))
   cp++;
 if (cp > rcp)
  error("`%S' is a preprocessing number but an invalid %s constant\n", token,

   (char*)cp-token, which);
}
