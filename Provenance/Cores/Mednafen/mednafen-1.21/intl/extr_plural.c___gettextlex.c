
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long num; int op; } ;
typedef TYPE_1__ YYSTYPE ;


 int ADDOP2 ;
 int CMPOP2 ;
 int EQUOP2 ;
 int MULOP2 ;
 int NUMBER ;
 int YYEOF ;
 int YYERRCODE ;
 int divide ;
 int equal ;
 int greater_or_equal ;
 int greater_than ;
 int less_or_equal ;
 int less_than ;
 int minus ;
 int module ;
 int mult ;
 int not_equal ;
 int plus ;

__attribute__((used)) static int
yylex (YYSTYPE *lval, const char **pexp)
{
  const char *exp = *pexp;
  int result;

  while (1)
    {
      if (exp[0] == '\0')
 {
   *pexp = exp;
   return YYEOF;
 }

      if (exp[0] != ' ' && exp[0] != '\t')
 break;

      ++exp;
    }

  result = *exp++;
  switch (result)
    {
    case '0': case '1': case '2': case '3': case '4':
    case '5': case '6': case '7': case '8': case '9':
      {
 unsigned long int n = result - '0';
 while (exp[0] >= '0' && exp[0] <= '9')
   {
     n *= 10;
     n += exp[0] - '0';
     ++exp;
   }
 lval->num = n;
 result = NUMBER;
      }
      break;

    case '=':
      if (exp[0] == '=')
 {
   ++exp;
   lval->op = equal;
   result = EQUOP2;
 }
      else
 result = YYERRCODE;
      break;

    case '!':
      if (exp[0] == '=')
 {
   ++exp;
   lval->op = not_equal;
   result = EQUOP2;
 }
      break;

    case '&':
    case '|':
      if (exp[0] == result)
 ++exp;
      else
 result = YYERRCODE;
      break;

    case '<':
      if (exp[0] == '=')
 {
   ++exp;
   lval->op = less_or_equal;
 }
      else
 lval->op = less_than;
      result = CMPOP2;
      break;

    case '>':
      if (exp[0] == '=')
 {
   ++exp;
   lval->op = greater_or_equal;
 }
      else
 lval->op = greater_than;
      result = CMPOP2;
      break;

    case '*':
      lval->op = mult;
      result = MULOP2;
      break;

    case '/':
      lval->op = divide;
      result = MULOP2;
      break;

    case '%':
      lval->op = module;
      result = MULOP2;
      break;

    case '+':
      lval->op = plus;
      result = ADDOP2;
      break;

    case '-':
      lval->op = minus;
      result = ADDOP2;
      break;

    case 'n':
    case '?':
    case ':':
    case '(':
    case ')':

      break;

    case ';':
    case '\n':
    case '\0':

      --exp;
      result = YYEOF;
      break;

    default:
      result = YYERRCODE;



      break;
    }

  *pexp = exp;

  return result;
}
