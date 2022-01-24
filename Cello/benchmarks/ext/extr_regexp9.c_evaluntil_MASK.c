#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_3__* last; TYPE_3__* first; } ;
struct TYPE_10__ {TYPE_3__* next; TYPE_3__* left; } ;
struct TYPE_9__ {TYPE_3__* right; void* subid; } ;
struct TYPE_11__ {TYPE_2__ u2; TYPE_1__ u1; } ;
typedef  TYPE_3__ Reinst ;
typedef  TYPE_4__ Node ;

/* Variables and functions */
#define  CAT 133 
#define  LBRA 132 
 int const NOP ; 
#define  OR 131 
#define  PLUS 130 
#define  QUEST 129 
 int RBRA ; 
#define  STAR 128 
 int* atorp ; 
 TYPE_3__* FUNC0 (int const) ; 
 TYPE_4__* FUNC1 (char) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void** subidp ; 

__attribute__((used)) static	void
FUNC5(int pri)
{
	Node *op1, *op2;
	Reinst *inst1, *inst2;

	while(pri==RBRA || atorp[-1]>=pri){
		switch(FUNC2()){
		default:
			FUNC4("unknown operator in evaluntil");
			break;
		case LBRA:		/* must have been RBRA */
			op1 = FUNC1('(');
			inst2 = FUNC0(RBRA);
			inst2->u1.subid = *subidp;
			op1->last->u2.next = inst2;
			inst1 = FUNC0(LBRA);
			inst1->u1.subid = *subidp;
			inst1->u2.next = op1->first;
			FUNC3(inst1, inst2);
			return;
		case OR:
			op2 = FUNC1('|');
			op1 = FUNC1('|');
			inst2 = FUNC0(NOP);
			op2->last->u2.next = inst2;
			op1->last->u2.next = inst2;
			inst1 = FUNC0(OR);
			inst1->u1.right = op1->first;
			inst1->u2.left = op2->first;
			FUNC3(inst1, inst2);
			break;
		case CAT:
			op2 = FUNC1(0);
			op1 = FUNC1(0);
			op1->last->u2.next = op2->first;
			FUNC3(op1->first, op2->last);
			break;
		case STAR:
			op2 = FUNC1('*');
			inst1 = FUNC0(OR);
			op2->last->u2.next = inst1;
			inst1->u1.right = op2->first;
			FUNC3(inst1, inst1);
			break;
		case PLUS:
			op2 = FUNC1('+');
			inst1 = FUNC0(OR);
			op2->last->u2.next = inst1;
			inst1->u1.right = op2->first;
			FUNC3(op2->first, inst1);
			break;
		case QUEST:
			op2 = FUNC1('?');
			inst1 = FUNC0(OR);
			inst2 = FUNC0(NOP);
			inst1->u2.left = inst2;
			inst1->u1.right = op2->first;
			op2->last->u2.next = inst2;
			FUNC3(inst1, inst2);
			break;
		}
	}
}