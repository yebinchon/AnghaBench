
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YYSTYPE ;


 int YYERRCODE ;
 short YYFLAG ;
 short YYLAST ;
 int YYMAXDEPTH ;
 int printf (char*,...) ;
 size_t* yyact ;
 int yychar ;
 int* yychk ;
 scalar_t__ yydebug ;
 short* yydef ;
 int yyerrflag ;
 int yyerrok ;
 int yyerror (char*) ;
 short* yyexca ;
 int yylex () ;
 int yylval ;
 scalar_t__ yynerrs ;
 short* yypact ;
 short* yypgo ;
 short* yyr1 ;
 int * yyr2 ;
 char* yytext ;
 int * yyv ;
 int yyval ;

yyparse() {

 short yys[YYMAXDEPTH];
 short yyj, yym;
 register YYSTYPE *yypvt;
 register short yystate, *yyps, yyn;
 register YYSTYPE *yypv;
 register short *yyxi;

 yystate = 0;
 yychar = -1;
 yynerrs = 0;
 yyerrflag = 0;
 yyps= &yys[-1];
 yypv= &yyv[-1];

 yystack:




  if( ++yyps> &yys[YYMAXDEPTH] ) { yyerror( "yacc stack overflow" ); return(1); }
  *yyps = yystate;
  ++yypv;
  *yypv = yyval;

 yynewstate:

 yyn = yypact[yystate];

 if( yyn<= YYFLAG ) goto yydefault;

 if( yychar<0 ) if( (yychar=yylex())<0 ) yychar=0;
 if( (yyn += yychar)<0 || yyn >= YYLAST ) goto yydefault;

 if( yychk[ yyn=yyact[ yyn ] ] == yychar ){
  yychar = -1;
  yyval = yylval;
  yystate = yyn;
  if( yyerrflag > 0 ) --yyerrflag;
  goto yystack;
  }

 yydefault:


 if( (yyn=yydef[yystate]) == -2 ) {
  if( yychar<0 ) if( (yychar=yylex())<0 ) yychar = 0;


  for( yyxi=yyexca; (*yyxi!= (-1)) || (yyxi[1]!=yystate) ; yyxi += 2 ) ;

  while( *(yyxi+=2) >= 0 ){
   if( *yyxi == yychar ) break;
   }
  if( (yyn = yyxi[1]) < 0 ) return(0);
  }

 if( yyn == 0 ){


  switch( yyerrflag ){

  case 0:

   yyerror( "syntax error" );
  yyerrlab:
   ++yynerrs;

  case 1:
  case 2:

   yyerrflag = 3;



   while ( yyps >= yys ) {
      yyn = yypact[*yyps] + YYERRCODE;
      if( yyn>= 0 && yyn < YYLAST && yychk[yyact[yyn]] == YYERRCODE ){
         yystate = yyact[yyn];
         goto yystack;
         }
      yyn = yypact[*yyps];






      --yyps;
      --yypv;
      }



 yyabort:
   return(1);


  case 3:





   if( yychar == 0 ) goto yyabort;
   yychar = -1;
   goto yynewstate;

   }

  }






  yyps -= yyr2[yyn];
  yypvt = yypv;
  yypv -= yyr2[yyn];
  yyval = yypv[1];
  yym=yyn;

  yyn = yyr1[yyn];
  yyj = yypgo[yyn] + *yyps + 1;
  if( yyj>=YYLAST || yychk[ yystate = yyact[yyj] ] != -yyn ) yystate = yyact[yypgo[yyn]];
  switch(yym){

case 4:
{ yyerrok; } break;
case 5:
{ printf("store\n"); } break;
case 6:
{ printf("add\n"); } break;
case 7:
{ printf("negate\nadd\n"); } break;
case 8:
{ printf("multiply\n"); } break;
case 9:
{ printf("divide\n"); } break;
case 10:
{ printf("negate\n"); } break;
case 12:
{ printf("load\n"); } break;
case 13:
{ printf("push %s\n", yytext); } break;
case 14:
{ printf("%s\n", yytext); } break;
  }
  goto yystack;

 }
