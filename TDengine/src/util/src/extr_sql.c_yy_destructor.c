
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int yyParser ;
struct TYPE_3__ {int yy186; int yy90; int yy498; int yy24; int yy471; int yy56; } ;
typedef TYPE_1__ YYMINORTYPE ;
typedef int YYCODETYPE ;


 int ParseARG_FETCH ;
 int destroyQuerySql (int ) ;
 int tFieldListDestroy (int ) ;
 int tSQLExprDestroy (int ) ;
 int tSQLExprListDestroy (int ) ;
 int tVariantDestroy (int *) ;
 int tVariantListDestroy (int ) ;

__attribute__((used)) static void yy_destructor(
  yyParser *yypParser,
  YYCODETYPE yymajor,
  YYMINORTYPE *yypminor
){
  ParseARG_FETCH;
  switch( yymajor ){
    case 215:
    case 216:
    case 239:
    case 241:
    case 242:
    case 251:
    case 255:
{
tVariantListDestroy((yypminor->yy56));
}
      break;
    case 231:
{
tFieldListDestroy((yypminor->yy471));
}
      break;
    case 232:
{
destroyQuerySql((yypminor->yy24));
}
      break;
    case 235:
    case 246:
    case 256:
    case 259:
{
tSQLExprListDestroy((yypminor->yy498));
}
      break;
    case 237:
    case 243:
    case 247:
    case 257:
{
tSQLExprDestroy((yypminor->yy90));
}
      break;
    case 252:
{
tVariantDestroy(&(yypminor->yy186));
}
      break;

    default: break;
  }
}
