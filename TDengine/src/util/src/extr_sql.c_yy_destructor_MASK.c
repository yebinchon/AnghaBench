#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yyParser ;
struct TYPE_3__ {int /*<<< orphan*/  yy186; int /*<<< orphan*/  yy90; int /*<<< orphan*/  yy498; int /*<<< orphan*/  yy24; int /*<<< orphan*/  yy471; int /*<<< orphan*/  yy56; } ;
typedef  TYPE_1__ YYMINORTYPE ;
typedef  int YYCODETYPE ;

/* Variables and functions */
 int /*<<< orphan*/  ParseARG_FETCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(
  yyParser *yypParser,    /* The parser */
  YYCODETYPE yymajor,     /* Type code for object to destroy */
  YYMINORTYPE *yypminor   /* The object to be destroyed */
){
  ParseARG_FETCH;
  switch( yymajor ){
    /* Here is inserted the actions which take place when a
    ** terminal or non-terminal is destroyed.  This can happen
    ** when the symbol is popped from the stack during a
    ** reduce or during error processing or when a parser is 
    ** being destroyed before it is finished parsing.
    **
    ** Note: during a reduce, the only symbols destroyed are those
    ** which appear on the RHS of the rule, but which are *not* used
    ** inside the C code.
    */
/********* Begin destructor definitions ***************************************/
    case 215: /* keep */
    case 216: /* tagitemlist */
    case 239: /* fill_opt */
    case 241: /* groupby_opt */
    case 242: /* orderby_opt */
    case 251: /* sortlist */
    case 255: /* grouplist */
{
FUNC5((yypminor->yy56));
}
      break;
    case 231: /* columnlist */
{
FUNC1((yypminor->yy471));
}
      break;
    case 232: /* select */
{
FUNC0((yypminor->yy24));
}
      break;
    case 235: /* selcollist */
    case 246: /* sclp */
    case 256: /* exprlist */
    case 259: /* itemlist */
{
FUNC3((yypminor->yy498));
}
      break;
    case 237: /* where_opt */
    case 243: /* having_opt */
    case 247: /* expr */
    case 257: /* expritem */
{
FUNC2((yypminor->yy90));
}
      break;
    case 252: /* sortitem */
{
FUNC4(&(yypminor->yy186));
}
      break;
/********* End destructor definitions *****************************************/
    default:  break;   /* If no destructor action specified: do nothing */
  }
}