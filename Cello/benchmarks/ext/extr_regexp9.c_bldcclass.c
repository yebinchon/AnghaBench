
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* spans; char* end; } ;
typedef char Rune ;


 int CCLASS ;
 int NCCLASS ;
 int NCCRUNE ;
 TYPE_1__* newclass () ;
 int nextc (char*) ;
 int rcerror (char*) ;
 TYPE_1__* yyclassp ;

__attribute__((used)) static int
bldcclass(void)
{
 int type;
 Rune r[NCCRUNE];
 Rune *p, *ep, *np;
 Rune rune;
 int quoted;


 type = CCLASS;
 yyclassp = newclass();



 ep = r;
 quoted = nextc(&rune);
 if(!quoted && rune == '^'){
  type = NCCLASS;
  quoted = nextc(&rune);
  *ep++ = '\n';
  *ep++ = '\n';
 }


 for(; ep<&r[NCCRUNE];){
  if(rune == 0){
   rcerror("malformed '[]'");
   return 0;
  }
  if(!quoted && rune == ']')
   break;
  if(!quoted && rune == '-'){
   if(ep == r){
    rcerror("malformed '[]'");
    return 0;
   }
   quoted = nextc(&rune);
   if((!quoted && rune == ']') || rune == 0){
    rcerror("malformed '[]'");
    return 0;
   }
   *(ep-1) = rune;
  } else {
   *ep++ = rune;
   *ep++ = rune;
  }
  quoted = nextc(&rune);
 }


 for(p = r; p < ep; p += 2){
  for(np = p; np < ep; np += 2)
   if(*np < *p){
    rune = np[0];
    np[0] = p[0];
    p[0] = rune;
    rune = np[1];
    np[1] = p[1];
    p[1] = rune;
   }
 }


 np = yyclassp->spans;
 p = r;
 if(r == ep)
  yyclassp->end = np;
 else {
  np[0] = *p++;
  np[1] = *p++;
  for(; p < ep; p += 2)
   if(p[0] <= np[1]){
    if(p[1] > np[1])
     np[1] = p[1];
   } else {
    np += 2;
    np[0] = p[0];
    np[1] = p[1];
   }
  yyclassp->end = np+2;
 }

 return type;
}
