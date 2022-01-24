#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ is_null; scalar_t__ type; } ;
typedef  TYPE_1__ network_mysqld_type_t ;
struct TYPE_18__ {TYPE_14__* params; scalar_t__ new_params_bound; int /*<<< orphan*/  iteration_count; scalar_t__ flags; int /*<<< orphan*/  stmt_id; } ;
typedef  TYPE_2__ network_mysqld_stmt_execute_packet_t ;
typedef  int /*<<< orphan*/  guint16 ;
typedef  int guint ;
typedef  int gsize ;
struct TYPE_19__ {int* str; int /*<<< orphan*/  len; } ;
struct TYPE_16__ {int len; } ;
typedef  TYPE_3__ GString ;

/* Variables and functions */
 scalar_t__ COM_STMT_EXECUTE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_1__* FUNC1 (TYPE_14__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_3__*,TYPE_1__*) ; 

int FUNC9(GString *packet,
		network_mysqld_stmt_execute_packet_t *stmt_execute_packet,
		guint param_count) {
	gsize nul_bits_len;
	GString *nul_bits;
	guint i;
	int err = 0;

	nul_bits_len = (param_count + 7) / 8;
	nul_bits = FUNC3(nul_bits_len);
	FUNC4(nul_bits->str, 0, nul_bits->len); /* set it all to zero */

	for (i = 0; i < param_count; i++) {
		network_mysqld_type_t *param = FUNC1(stmt_execute_packet->params, i);

		if (param->is_null) {
			nul_bits->str[i / 8] |= 1 << (i % 8);
		}
	}

	FUNC7(packet, COM_STMT_EXECUTE);
	FUNC6(packet, stmt_execute_packet->stmt_id);
	FUNC7(packet, stmt_execute_packet->flags);
	FUNC6(packet, stmt_execute_packet->iteration_count);
	FUNC2(packet, FUNC0(nul_bits));
	FUNC7(packet, stmt_execute_packet->new_params_bound);

	if (stmt_execute_packet->new_params_bound) {
		for (i = 0; i < stmt_execute_packet->params->len; i++) {
			network_mysqld_type_t *param = FUNC1(stmt_execute_packet->params, i);

			FUNC5(packet, (guint16)param->type);
		}
		for (i = 0; 0 == err && i < stmt_execute_packet->params->len; i++) {
			network_mysqld_type_t *param = FUNC1(stmt_execute_packet->params, i);
			
			if (!param->is_null) {
				err = err || FUNC8(packet, param);
			}
		}
	}

	return err ? -1 : 0;
}