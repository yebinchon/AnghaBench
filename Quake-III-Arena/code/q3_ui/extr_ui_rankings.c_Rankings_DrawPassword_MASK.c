#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  password ;
struct TYPE_4__ {char* buffer; int cursor; } ;
struct TYPE_5__ {TYPE_1__ field; } ;
typedef  TYPE_2__ menufield_s ;

/* Variables and functions */
 int MAX_EDIT_LINE ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (char*) ; 

void FUNC4( void* self )
{
	menufield_s*	f;
	char			password[MAX_EDIT_LINE];
	int				length;
	int				i;
	char*			p;

	f = (menufield_s*)self;
	
	// GRANK_FIXME - enforce valid characters
	for( p = f->field.buffer; *p != '\0'; p++ )
	{
		//if( ispunct(*p) || isspace(*p) )
		if( !( ( (*p) >= '0' && (*p) <= '9') || FUNC0(*p)) )
		{
			*p = '\0';
		}
	}
	
	length = FUNC3( f->field.buffer );
	if( f->field.cursor > length )
	{
		f->field.cursor = length;
	}
	
	// save password
	FUNC1( password, f->field.buffer, sizeof(password) );

	// mask password with *
	for( i = 0; i < length; i++ )
	{
		f->field.buffer[i] = '*';
	}

	// draw masked password
	FUNC2( f );
	//MenuField_Draw( f );

	// restore password
	FUNC1( f->field.buffer, password, sizeof(f->field.buffer) );
}