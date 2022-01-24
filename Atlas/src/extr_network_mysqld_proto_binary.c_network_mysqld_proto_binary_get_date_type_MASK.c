#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  network_packet ;
typedef  int /*<<< orphan*/  network_mysqld_type_t ;
struct TYPE_4__ {int month; int day; int hour; int min; int sec; int /*<<< orphan*/  nsec; int /*<<< orphan*/  year; } ;
typedef  TYPE_1__ network_mysqld_type_date_t ;
typedef  int guint8 ;
typedef  int /*<<< orphan*/  date ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(network_packet *packet, network_mysqld_type_t *type) {
	int err = 0;
	guint8 len;
	network_mysqld_type_date_t date;

	err = err || FUNC3(packet, &len);

	/* check the valid lengths
	 */
	switch (len) {
	case 11: /* date + time + ms */
	case 7:  /* date + time ( ms is .0000 ) */
	case 4:  /* date ( time is 00:00:00 )*/
	case 0:  /* date == 0000-00-00 */
		break;
	default:
		return -1;
	}

	FUNC0(&date, 0, sizeof(date));
	if (len > 0) {
		err = err || FUNC1(packet, &date.year);
		err = err || FUNC3(packet, &date.month);
		err = err || FUNC3(packet, &date.day);
		
		if (len > 4) {
			err = err || FUNC3(packet, &date.hour);
			err = err || FUNC3(packet, &date.min);
			err = err || FUNC3(packet, &date.sec);

			if (len > 7) {
				err = err || FUNC2(packet, &date.nsec);
			}
		}
	}

	if (0 == err) {
		err = err || FUNC4(type, &date);
	}

	return err ? -1 : 0;
}