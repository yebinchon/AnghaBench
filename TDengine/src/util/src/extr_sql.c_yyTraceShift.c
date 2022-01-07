
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t yyidx; TYPE_1__* yystack; } ;
typedef TYPE_2__ yyParser ;
struct TYPE_4__ {size_t major; } ;


 int YYNSTATE ;
 int fprintf (scalar_t__,char*,char*,char*,...) ;
 char** yyTokenName ;
 scalar_t__ yyTraceFILE ;
 char* yyTracePrompt ;

__attribute__((used)) static void yyTraceShift(yyParser *yypParser, int yyNewState){
  if( yyTraceFILE ){
    if( yyNewState<YYNSTATE ){
      fprintf(yyTraceFILE,"%sShift '%s', go to state %d\n",
         yyTracePrompt,yyTokenName[yypParser->yystack[yypParser->yyidx].major],
         yyNewState);
    }else{
      fprintf(yyTraceFILE,"%sShift '%s'\n",
         yyTracePrompt,yyTokenName[yypParser->yystack[yypParser->yyidx].major]);
    }
  }
}
