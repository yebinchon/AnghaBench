#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int* _p; TYPE_1__* _nodes; } ;
struct TYPE_7__ {char left; } ;
typedef  char TRexChar ;
typedef  int /*<<< orphan*/  TRexBool ;
typedef  TYPE_2__ TRex ;

/* Variables and functions */
 char OP_WB ; 
 int TREX_SYMBOL_ESCAPE_CHAR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,char) ; 

__attribute__((used)) static int FUNC5(TRex *exp,TRexBool isclass)
{
	TRexChar t;
	if(*exp->_p == TREX_SYMBOL_ESCAPE_CHAR) {
		exp->_p++;
		switch(*exp->_p) {
			case 'n': exp->_p++; return FUNC4(exp,'\n');
			case 't': exp->_p++; return FUNC4(exp,'\t');
			case 'r': exp->_p++; return FUNC4(exp,'\r');
			case 'f': exp->_p++; return FUNC4(exp,'\f');
			case 'v': exp->_p++; return FUNC4(exp,'\v');
			case 'a': case 'A': case 'w': case 'W': case 's': case 'S':
			case 'd': case 'D': case 'x': case 'X': case 'c': case 'C':
			case 'p': case 'P': case 'l': case 'u':
				{
				t = *exp->_p; exp->_p++;
				return FUNC2(exp,t);
				}
			case 'b':
			case 'B':
				if(!isclass) {
					int node = FUNC4(exp,OP_WB);
					exp->_nodes[node].left = *exp->_p;
					exp->_p++;
					return node;
				} //else default
				/* falls through */
			default:
				t = *exp->_p; exp->_p++;
				return FUNC4(exp,t);
		}
	}
	else if(!FUNC1((int) *exp->_p)) {

		FUNC3(exp,FUNC0("letter expected"));
	}
	t = *exp->_p; exp->_p++;
	return FUNC4(exp,t);
}