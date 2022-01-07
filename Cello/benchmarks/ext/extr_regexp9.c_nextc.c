
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Rune ;


 scalar_t__ chartorune (char*,int ) ;
 int exprp ;
 int lexdone ;

__attribute__((used)) static int
nextc(Rune *rp)
{
 if(lexdone){
  *rp = 0;
  return 1;
 }
 exprp += chartorune(rp, exprp);
 if(*rp == '\\'){
  exprp += chartorune(rp, exprp);
  return 1;
 }
 if(*rp == 0)
  lexdone = 1;
 return 0;
}
