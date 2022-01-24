#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  network_packet ;
struct TYPE_14__ {int /*<<< orphan*/  is_null; } ;
typedef  TYPE_1__ network_mysqld_type_t ;
typedef  int /*<<< orphan*/  network_mysqld_resultset_row_t ;
struct TYPE_15__ {int len; } ;
typedef  TYPE_2__ network_mysqld_proto_fielddefs_t ;
struct TYPE_16__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ network_mysqld_proto_fielddef_t ;
typedef  scalar_t__ guint8 ;
typedef  int guint ;
struct TYPE_17__ {int* str; } ;
typedef  TYPE_4__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,TYPE_4__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(network_packet *packet, network_mysqld_proto_fielddefs_t *coldefs, network_mysqld_resultset_row_t *row) {
	int err = 0;
	guint i;
	guint nul_bytes_len;
	GString *nul_bytes;
	guint8 ok;

	err = err || FUNC7(packet, &ok); /* the packet header which seems to be always 0 */
	err = err || (ok != 0);

	nul_bytes_len = (coldefs->len + 7 + 2) / 8; /* the first 2 bits are reserved */
	nul_bytes = FUNC4(nul_bytes_len);
	err = err || FUNC6(packet, nul_bytes_len, nul_bytes);

	for (i = 0; 0 == err && i < coldefs->len; i++) {
		network_mysqld_type_t *param;
		network_mysqld_proto_fielddef_t *coldef = FUNC2(coldefs, i);

		param = FUNC8(coldef->type);
		if (NULL == param) {
			FUNC0("%s: coulnd't create type = %d",
					G_STRLOC, coldef->type);

			err = -1;
			break;
		}

		if (nul_bytes->str[(i + 2) / 8] & (1 << ((i + 2) % 8))) {
			param->is_null = TRUE;
		} else {
			err = err || FUNC5(packet, param);
		}

		FUNC1(row, param);
	}

	FUNC3(nul_bytes, TRUE);

	return err ? -1 : 0;
}