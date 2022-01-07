
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ xFunc; scalar_t__ xStep; int nArg; int iPrefEnc; } ;
typedef TYPE_1__ FuncDef ;


 int FUNC_PERFECT_MATCH ;

__attribute__((used)) static int matchQuality(
  FuncDef *p,
  int nArg,
  u8 enc
){
  int match;


  if( nArg==(-2) ) return (p->xFunc==0 && p->xStep==0) ? 0 : FUNC_PERFECT_MATCH;


  if( p->nArg!=nArg && p->nArg>=0 ) return 0;



  if( p->nArg==nArg ){
    match = 4;
  }else{
    match = 1;
  }


  if( enc==p->iPrefEnc ){
    match += 2;
  }else if( (enc & p->iPrefEnc & 2)!=0 ){
    match += 1;
  }

  return match;
}
