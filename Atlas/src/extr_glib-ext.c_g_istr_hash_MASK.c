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
typedef  int guint32 ;
typedef  int guint ;
typedef  unsigned char* gconstpointer ;

/* Variables and functions */
 int FUNC0 (unsigned char) ; 

guint FUNC1(gconstpointer v) {
	/* djb2 */
	const unsigned char *p = v;
	unsigned char c;
	guint32 h = 5381;
	
	while ((c = *p++)) {
		h = ((h << 5) + h) + FUNC0(c);
	}
	
	return h;
}