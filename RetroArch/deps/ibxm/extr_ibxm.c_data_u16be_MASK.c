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
struct data {int length; int* buffer; } ;

/* Variables and functions */

__attribute__((used)) static int FUNC0( struct data *data, int offset ) {
	int value = 0;
	if( offset + 1 < data->length ) {
		value = ( ( data->buffer[ offset ] & 0xFF ) << 8 )
			| ( data->buffer[ offset + 1 ] & 0xFF );
	}
	return value;
}