
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int yyParser ;
struct TYPE_9__ {int b; } ;
struct TYPE_8__ {int pSelect; int pList; } ;
struct TYPE_7__ {int pExpr; } ;
struct TYPE_10__ {TYPE_3__ yy410; int yy327; TYPE_2__ yy487; int yy180; int yy122; int yy347; int yy442; TYPE_1__ yy342; int yy159; } ;
typedef TYPE_4__ YYMINORTYPE ;
typedef int YYCODETYPE ;
struct TYPE_11__ {int db; } ;


 TYPE_6__* pParse ;
 int sqlite3DeleteTriggerStep (int ,int ) ;
 int sqlite3ExprDelete (int ,int ) ;
 int sqlite3ExprListDelete (int ,int ) ;
 int sqlite3IdListDelete (int ,int ) ;
 int sqlite3ParserARG_FETCH ;
 int sqlite3SelectDelete (int ,int ) ;
 int sqlite3SrcListDelete (int ,int ) ;

__attribute__((used)) static void yy_destructor(
  yyParser *yypParser,
  YYCODETYPE yymajor,
  YYMINORTYPE *yypminor
){
  sqlite3ParserARG_FETCH;
  switch( yymajor ){
    case 160:
    case 194:
{
sqlite3SelectDelete(pParse->db, (yypminor->yy159));
}
      break;
    case 173:
    case 174:
{
sqlite3ExprDelete(pParse->db, (yypminor->yy342).pExpr);
}
      break;
    case 178:
    case 187:
    case 197:
    case 200:
    case 202:
    case 204:
    case 214:
    case 215:
    case 216:
    case 220:
    case 225:
{
sqlite3ExprListDelete(pParse->db, (yypminor->yy442));
}
      break;
    case 193:
    case 198:
    case 206:
    case 207:
{
sqlite3SrcListDelete(pParse->db, (yypminor->yy347));
}
      break;
    case 199:
    case 201:
    case 210:
    case 224:
    case 226:
    case 236:
    case 241:
{
sqlite3ExprDelete(pParse->db, (yypminor->yy122));
}
      break;
    case 211:
    case 213:
    case 218:
{
sqlite3IdListDelete(pParse->db, (yypminor->yy180));
}
      break;
    case 219:
{

  sqlite3ExprListDelete(pParse->db, (yypminor->yy487).pList);
  sqlite3SelectDelete(pParse->db, (yypminor->yy487).pSelect);

}
      break;
    case 232:
    case 237:
{
sqlite3DeleteTriggerStep(pParse->db, (yypminor->yy327));
}
      break;
    case 234:
{
sqlite3IdListDelete(pParse->db, (yypminor->yy410).b);
}
      break;
    default: break;
  }
}
