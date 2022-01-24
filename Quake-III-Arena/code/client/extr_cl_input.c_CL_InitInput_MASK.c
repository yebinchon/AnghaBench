#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IN_BackDown ; 
 int /*<<< orphan*/  IN_BackUp ; 
 int /*<<< orphan*/  IN_Button0Down ; 
 int /*<<< orphan*/  IN_Button0Up ; 
 int /*<<< orphan*/  IN_Button10Down ; 
 int /*<<< orphan*/  IN_Button10Up ; 
 int /*<<< orphan*/  IN_Button11Down ; 
 int /*<<< orphan*/  IN_Button11Up ; 
 int /*<<< orphan*/  IN_Button12Down ; 
 int /*<<< orphan*/  IN_Button12Up ; 
 int /*<<< orphan*/  IN_Button13Down ; 
 int /*<<< orphan*/  IN_Button13Up ; 
 int /*<<< orphan*/  IN_Button14Down ; 
 int /*<<< orphan*/  IN_Button14Up ; 
 int /*<<< orphan*/  IN_Button1Down ; 
 int /*<<< orphan*/  IN_Button1Up ; 
 int /*<<< orphan*/  IN_Button2Down ; 
 int /*<<< orphan*/  IN_Button2Up ; 
 int /*<<< orphan*/  IN_Button3Down ; 
 int /*<<< orphan*/  IN_Button3Up ; 
 int /*<<< orphan*/  IN_Button4Down ; 
 int /*<<< orphan*/  IN_Button4Up ; 
 int /*<<< orphan*/  IN_Button5Down ; 
 int /*<<< orphan*/  IN_Button5Up ; 
 int /*<<< orphan*/  IN_Button6Down ; 
 int /*<<< orphan*/  IN_Button6Up ; 
 int /*<<< orphan*/  IN_Button7Down ; 
 int /*<<< orphan*/  IN_Button7Up ; 
 int /*<<< orphan*/  IN_Button8Down ; 
 int /*<<< orphan*/  IN_Button8Up ; 
 int /*<<< orphan*/  IN_Button9Down ; 
 int /*<<< orphan*/  IN_Button9Up ; 
 int /*<<< orphan*/  IN_CenterView ; 
 int /*<<< orphan*/  IN_DownDown ; 
 int /*<<< orphan*/  IN_DownUp ; 
 int /*<<< orphan*/  IN_ForwardDown ; 
 int /*<<< orphan*/  IN_ForwardUp ; 
 int /*<<< orphan*/  IN_LeftDown ; 
 int /*<<< orphan*/  IN_LeftUp ; 
 int /*<<< orphan*/  IN_LookdownDown ; 
 int /*<<< orphan*/  IN_LookdownUp ; 
 int /*<<< orphan*/  IN_LookupDown ; 
 int /*<<< orphan*/  IN_LookupUp ; 
 int /*<<< orphan*/  IN_MLookDown ; 
 int /*<<< orphan*/  IN_MLookUp ; 
 int /*<<< orphan*/  IN_MoveleftDown ; 
 int /*<<< orphan*/  IN_MoveleftUp ; 
 int /*<<< orphan*/  IN_MoverightDown ; 
 int /*<<< orphan*/  IN_MoverightUp ; 
 int /*<<< orphan*/  IN_RightDown ; 
 int /*<<< orphan*/  IN_RightUp ; 
 int /*<<< orphan*/  IN_SpeedDown ; 
 int /*<<< orphan*/  IN_SpeedUp ; 
 int /*<<< orphan*/  IN_StrafeDown ; 
 int /*<<< orphan*/  IN_StrafeUp ; 
 int /*<<< orphan*/  IN_UpDown ; 
 int /*<<< orphan*/  IN_UpUp ; 
 void* cl_debugMove ; 
 void* cl_nodelta ; 

void FUNC2( void ) {
	FUNC0 ("centerview",IN_CenterView);

	FUNC0 ("+moveup",IN_UpDown);
	FUNC0 ("-moveup",IN_UpUp);
	FUNC0 ("+movedown",IN_DownDown);
	FUNC0 ("-movedown",IN_DownUp);
	FUNC0 ("+left",IN_LeftDown);
	FUNC0 ("-left",IN_LeftUp);
	FUNC0 ("+right",IN_RightDown);
	FUNC0 ("-right",IN_RightUp);
	FUNC0 ("+forward",IN_ForwardDown);
	FUNC0 ("-forward",IN_ForwardUp);
	FUNC0 ("+back",IN_BackDown);
	FUNC0 ("-back",IN_BackUp);
	FUNC0 ("+lookup", IN_LookupDown);
	FUNC0 ("-lookup", IN_LookupUp);
	FUNC0 ("+lookdown", IN_LookdownDown);
	FUNC0 ("-lookdown", IN_LookdownUp);
	FUNC0 ("+strafe", IN_StrafeDown);
	FUNC0 ("-strafe", IN_StrafeUp);
	FUNC0 ("+moveleft", IN_MoveleftDown);
	FUNC0 ("-moveleft", IN_MoveleftUp);
	FUNC0 ("+moveright", IN_MoverightDown);
	FUNC0 ("-moveright", IN_MoverightUp);
	FUNC0 ("+speed", IN_SpeedDown);
	FUNC0 ("-speed", IN_SpeedUp);
	FUNC0 ("+attack", IN_Button0Down);
	FUNC0 ("-attack", IN_Button0Up);
	FUNC0 ("+button0", IN_Button0Down);
	FUNC0 ("-button0", IN_Button0Up);
	FUNC0 ("+button1", IN_Button1Down);
	FUNC0 ("-button1", IN_Button1Up);
	FUNC0 ("+button2", IN_Button2Down);
	FUNC0 ("-button2", IN_Button2Up);
	FUNC0 ("+button3", IN_Button3Down);
	FUNC0 ("-button3", IN_Button3Up);
	FUNC0 ("+button4", IN_Button4Down);
	FUNC0 ("-button4", IN_Button4Up);
	FUNC0 ("+button5", IN_Button5Down);
	FUNC0 ("-button5", IN_Button5Up);
	FUNC0 ("+button6", IN_Button6Down);
	FUNC0 ("-button6", IN_Button6Up);
	FUNC0 ("+button7", IN_Button7Down);
	FUNC0 ("-button7", IN_Button7Up);
	FUNC0 ("+button8", IN_Button8Down);
	FUNC0 ("-button8", IN_Button8Up);
	FUNC0 ("+button9", IN_Button9Down);
	FUNC0 ("-button9", IN_Button9Up);
	FUNC0 ("+button10", IN_Button10Down);
	FUNC0 ("-button10", IN_Button10Up);
	FUNC0 ("+button11", IN_Button11Down);
	FUNC0 ("-button11", IN_Button11Up);
	FUNC0 ("+button12", IN_Button12Down);
	FUNC0 ("-button12", IN_Button12Up);
	FUNC0 ("+button13", IN_Button13Down);
	FUNC0 ("-button13", IN_Button13Up);
	FUNC0 ("+button14", IN_Button14Down);
	FUNC0 ("-button14", IN_Button14Up);
	FUNC0 ("+mlook", IN_MLookDown);
	FUNC0 ("-mlook", IN_MLookUp);

	cl_nodelta = FUNC1 ("cl_nodelta", "0", 0);
	cl_debugMove = FUNC1 ("cl_debugMove", "0", 0);
}