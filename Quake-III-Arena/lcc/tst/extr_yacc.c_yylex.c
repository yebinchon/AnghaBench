
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CON ;
 int ID ;
 int fprintf (int ,char*,int) ;
 int yylook () ;
 int yyout ;
 int* yytext ;
 int yywrap () ;

yylex(){
int nstr; extern int yyprevious;
while((nstr = yylook()) >= 0)
yyfussy: switch(nstr){
case 0:
if(yywrap()) return(0); break;
case 1:
 return ID;
break;
case 2:
                 return CON;
break;
case 3:
                  ;
break;
case 4:
                   return yytext[0];
break;
case -1:
break;
default:
fprintf(yyout,"bad switch yylook %d",nstr);
} return(0); }
