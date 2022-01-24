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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  fmtbuf ;
typedef  int /*<<< orphan*/  buf ;
typedef  int UINT ;
struct TYPE_12__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,char*) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  Rows; int /*<<< orphan*/  Columns; } ;
struct TYPE_10__ {int /*<<< orphan*/  String; } ;
struct TYPE_9__ {int /*<<< orphan*/ * Strings; } ;
typedef  TYPE_1__ CTR ;
typedef  TYPE_2__ CTC ;
typedef  TYPE_3__ CT ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*) ; 

void FUNC6(CT *ct, CONSOLE *c)
{
	UINT i, j;
	UINT num_columns = FUNC2(ct->Columns);
	wchar_t buf[MAX_SIZE*4];
	wchar_t fmtbuf[MAX_SIZE*4];

	// Show the heading row
	buf[0] = 0;
	for(i=0; i<num_columns; i++)
	{
		CTC *ctc = FUNC1(ct->Columns, i);
		FUNC0(fmtbuf, sizeof(fmtbuf), ctc->String);
		FUNC3(buf, sizeof(buf), fmtbuf);
		if(i != num_columns-1)
			FUNC3(buf, sizeof(buf), L",");
	}
	c->Write(c, buf);

	// Show the table body
	for(j=0; j<FUNC2(ct->Rows); j++)
	{
		CTR *ctr = FUNC1(ct->Rows, j);
		buf[0] = 0;
		for(i=0; i<num_columns; i++)
		{
			FUNC0(fmtbuf, sizeof(fmtbuf), ctr->Strings[i]);
			FUNC3(buf, sizeof(buf), fmtbuf);
			if(i != num_columns-1)
				FUNC3(buf, sizeof(buf), L",");
		}
		c->Write(c, buf);
	}
}