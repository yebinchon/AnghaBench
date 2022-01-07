
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int yyParser ;
struct TYPE_5__ {int b; } ;
struct TYPE_6__ {TYPE_1__ yy90; int yy203; int yy384; int yy451; int yy259; int yy322; int yy314; int yy387; } ;
typedef TYPE_2__ YYMINORTYPE ;
typedef int YYCODETYPE ;
struct TYPE_7__ {int db; } ;


 TYPE_4__* pParse ;
 int sqlite3DeleteTriggerStep (int ,int ) ;
 int sqlite3ExprDelete (int ,int ) ;
 int sqlite3ExprListDelete (int ,int ) ;
 int sqlite3IdListDelete (int ,int ) ;
 int sqlite3ParserARG_FETCH ;
 int sqlite3SelectDelete (int ,int ) ;
 int sqlite3SrcListDelete (int ,int ) ;
 int sqlite3WithDelete (int ,int ) ;

__attribute__((used)) static void yy_destructor(
  yyParser *yypParser,
  YYCODETYPE yymajor,
  YYMINORTYPE *yypminor
){
  sqlite3ParserARG_FETCH;
  switch( yymajor ){
    case 163:
    case 195:
    case 196:
    case 207:
{
sqlite3SelectDelete(pParse->db, (yypminor->yy387));
}
      break;
    case 173:
    case 174:
    case 202:
    case 204:
    case 216:
    case 227:
    case 229:
    case 238:
    case 243:
{
sqlite3ExprDelete(pParse->db, (yypminor->yy314));
}
      break;
    case 178:
    case 187:
    case 188:
    case 200:
    case 203:
    case 205:
    case 208:
    case 209:
    case 210:
    case 220:
    case 226:
    case 228:
{
sqlite3ExprListDelete(pParse->db, (yypminor->yy322));
}
      break;
    case 194:
    case 201:
    case 212:
    case 213:
{
sqlite3SrcListDelete(pParse->db, (yypminor->yy259));
}
      break;
    case 197:
{
sqlite3WithDelete(pParse->db, (yypminor->yy451));
}
      break;
    case 217:
    case 218:
    case 222:
{
sqlite3IdListDelete(pParse->db, (yypminor->yy384));
}
      break;
    case 234:
    case 239:
{
sqlite3DeleteTriggerStep(pParse->db, (yypminor->yy203));
}
      break;
    case 236:
{
sqlite3IdListDelete(pParse->db, (yypminor->yy90).b);
}
      break;

    default: break;
  }
}
