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
typedef  TYPE_1__* rcc_type_ty ;
struct TYPE_3__ {int kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARRAY ; 
 int /*<<< orphan*/  CONST ; 
 int /*<<< orphan*/  ENUM ; 
 int /*<<< orphan*/  FLOAT ; 
 int /*<<< orphan*/  FUNCTION ; 
 int /*<<< orphan*/  INT ; 
 int /*<<< orphan*/  POINTER ; 
 int /*<<< orphan*/  STRUCT ; 
 int /*<<< orphan*/  UNION ; 
 int /*<<< orphan*/  UNSIGNED ; 
 int /*<<< orphan*/  VOID ; 
 int /*<<< orphan*/  VOLATILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enum_list ; 
 int /*<<< orphan*/  field_list ; 
 int /*<<< orphan*/  fields ; 
 int /*<<< orphan*/  formals ; 
 int /*<<< orphan*/  identifier ; 
 int /*<<< orphan*/  ids ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  tag ; 
 int /*<<< orphan*/  type ; 
 int /*<<< orphan*/  uid ; 
 int /*<<< orphan*/  uid_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(rcc_type_ty x) {
#define attributes xx(x,size,int); xx(x,align,int)
	switch (x->kind) {
	static char *typename = "type";
	FUNC1(INT); break;
	FUNC1(UNSIGNED); break;
	FUNC1(FLOAT); break;
	FUNC1(VOID); break;
	FUNC1(POINTER);
		FUNC3(POINTER,type,uid);
		break;
	FUNC1(ENUM);
		FUNC3(ENUM,tag,identifier);
		FUNC3(ENUM,ids,enum_list);
		break;
	FUNC1(STRUCT);
		FUNC3(STRUCT,tag,identifier);
		FUNC3(STRUCT,fields,field_list);
		break;
	FUNC1(UNION);
		FUNC3(UNION,tag,identifier);
		FUNC3(UNION,fields,field_list);
		break;
	FUNC1(ARRAY);
		FUNC3(ARRAY,type,uid);
		break;
	FUNC1(FUNCTION);
		FUNC3(FUNCTION,type,uid);
		FUNC3(FUNCTION,formals,uid_list);
		break;
	FUNC1(CONST);
		FUNC3(CONST,type,uid);
		break;
	FUNC1(VOLATILE);
		FUNC3(VOLATILE,type,uid);
		break;
	default: FUNC0(0);
	}
#undef attributes
	FUNC2("</ul>\n");
}