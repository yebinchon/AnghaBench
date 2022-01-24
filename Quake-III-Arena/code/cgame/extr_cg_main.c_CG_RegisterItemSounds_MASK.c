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
struct TYPE_3__ {char* pickup_sound; char* sounds; int /*<<< orphan*/  classname; } ;
typedef  TYPE_1__ gitem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int MAX_QPATH ; 
 TYPE_1__* bg_itemlist ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4( int itemNum ) {
	gitem_t			*item;
	char			data[MAX_QPATH];
	char			*s, *start;
	int				len;

	item = &bg_itemlist[ itemNum ];

	if( item->pickup_sound ) {
		FUNC3( item->pickup_sound, qfalse );
	}

	// parse the space seperated precache string for other media
	s = item->sounds;
	if (!s || !s[0])
		return;

	while (*s) {
		start = s;
		while (*s && *s != ' ') {
			s++;
		}

		len = s-start;
		if (len >= MAX_QPATH || len < 5) {
			FUNC0( "PrecacheItem: %s has bad precache string", 
				item->classname);
			return;
		}
		FUNC1 (data, start, len);
		data[len] = 0;
		if ( *s ) {
			s++;
		}

		if ( !FUNC2(data+len-3, "wav" )) {
			FUNC3( data, qfalse );
		}
	}
}