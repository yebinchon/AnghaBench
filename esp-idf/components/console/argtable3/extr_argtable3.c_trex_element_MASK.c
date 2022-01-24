#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int* _p; TYPE_1__* _nodes; } ;
struct TYPE_11__ {int left; unsigned short right; int next; } ;
typedef  scalar_t__ TRexBool ;
typedef  TYPE_2__ TRex ;

/* Variables and functions */
 int /*<<< orphan*/  OP_DOT ; 
 int /*<<< orphan*/  OP_EOL ; 
 int /*<<< orphan*/  OP_EXPR ; 
 int /*<<< orphan*/  OP_GREEDY ; 
 int /*<<< orphan*/  OP_NOCAPEXPR ; 
#define  TREX_SYMBOL_ANY_CHAR 132 
 int TREX_SYMBOL_BRANCH ; 
#define  TREX_SYMBOL_END_OF_STRING 131 
#define  TREX_SYMBOL_GREEDY_ONE_OR_MORE 130 
#define  TREX_SYMBOL_GREEDY_ZERO_OR_MORE 129 
#define  TREX_SYMBOL_GREEDY_ZERO_OR_ONE 128 
 scalar_t__ TRex_False ; 
 scalar_t__ TRex_True ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*,scalar_t__) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char) ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(TRex *exp)
{
	int ret = -1;
	switch(*exp->_p)
	{
	case '(': {
		int expr,newn;
		exp->_p++;


		if(*exp->_p =='?') {
			exp->_p++;
			FUNC5(exp,':');
			expr = FUNC7(exp,OP_NOCAPEXPR);
		}
		else
			expr = FUNC7(exp,OP_EXPR);
		newn = FUNC6(exp);
		exp->_nodes[expr].left = newn;
		ret = expr;
		FUNC5(exp,')');
			  }
			  break;
	case '[':
		exp->_p++;
		ret = FUNC3(exp);
		FUNC5(exp,']');
		break;
	case TREX_SYMBOL_END_OF_STRING: exp->_p++; ret = FUNC7(exp,OP_EOL);break;
	case TREX_SYMBOL_ANY_CHAR: exp->_p++; ret = FUNC7(exp,OP_DOT);break;
	default:
		ret = FUNC2(exp,TRex_False);
		break;
	}

	{
		TRexBool isgreedy = TRex_False;
		unsigned short p0 = 0, p1 = 0;
		switch(*exp->_p){
			case TREX_SYMBOL_GREEDY_ZERO_OR_MORE: p0 = 0; p1 = 0xFFFF; exp->_p++; isgreedy = TRex_True; break;
			case TREX_SYMBOL_GREEDY_ONE_OR_MORE: p0 = 1; p1 = 0xFFFF; exp->_p++; isgreedy = TRex_True; break;
			case TREX_SYMBOL_GREEDY_ZERO_OR_ONE: p0 = 0; p1 = 1; exp->_p++; isgreedy = TRex_True; break;
			case '{':
				exp->_p++;
				if(!FUNC1((int) *exp->_p)) FUNC4(exp,FUNC0("number expected"));
				p0 = (unsigned short)FUNC8(exp);
				/*******************************/
				switch(*exp->_p) {
			case '}':
				p1 = p0; exp->_p++;
				break;
			case ',':
				exp->_p++;
				p1 = 0xFFFF;
				if(FUNC1((int) *exp->_p)){
					p1 = (unsigned short)FUNC8(exp);
				}
				FUNC5(exp,'}');
				break;
			default:
				FUNC4(exp,FUNC0(", or } expected"));
		}
		/*******************************/
		isgreedy = TRex_True;
		break;

		}
		if(isgreedy) {
			int nnode = FUNC7(exp,OP_GREEDY);
			exp->_nodes[nnode].left = ret;
			exp->_nodes[nnode].right = ((p0)<<16)|p1;
			ret = nnode;
		}
	}
	if((*exp->_p != TREX_SYMBOL_BRANCH) && (*exp->_p != ')') && (*exp->_p != TREX_SYMBOL_GREEDY_ZERO_OR_MORE) && (*exp->_p != TREX_SYMBOL_GREEDY_ONE_OR_MORE) && (*exp->_p != '\0')) {
		int nnode = FUNC9(exp);
		exp->_nodes[ret].next = nnode;
	}

	return ret;
}