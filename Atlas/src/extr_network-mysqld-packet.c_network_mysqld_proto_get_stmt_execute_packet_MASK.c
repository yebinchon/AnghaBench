#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  network_packet ;
struct TYPE_12__ {int is_null; int is_unsigned; } ;
typedef  TYPE_1__ network_mysqld_type_t ;
struct TYPE_13__ {int /*<<< orphan*/  params; scalar_t__ new_params_bound; int /*<<< orphan*/  iteration_count; scalar_t__ flags; int /*<<< orphan*/  stmt_id; } ;
typedef  TYPE_2__ network_mysqld_stmt_execute_packet_t ;
typedef  int guint16 ;
typedef  int guint ;
typedef  int gsize ;
struct TYPE_14__ {int* str; } ;
typedef  TYPE_3__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int) ; 

int FUNC12(network_packet *packet,
		network_mysqld_stmt_execute_packet_t *stmt_execute_packet,
		guint param_count) {
	int err = 0;
	GString *nul_bits;
	gsize nul_bits_len;

	err = err || FUNC10(packet, &stmt_execute_packet->stmt_id);
	err = err || FUNC9(packet, &stmt_execute_packet->flags);
	err = err || FUNC8(packet, &stmt_execute_packet->iteration_count);

	if (0 == param_count) {
		return err ? -1 : 0;
	}

	nul_bits_len = (param_count + 7) / 8;
	nul_bits = FUNC4(nul_bits_len);
	err = err || FUNC6(packet, nul_bits_len, nul_bits);
	err = err || FUNC9(packet, &stmt_execute_packet->new_params_bound);

	if (0 != err) {
		FUNC3(nul_bits, TRUE);

		return -1; /* exit early if something failed up to now */
	}

	if (stmt_execute_packet->new_params_bound) {
		guint i;

		for (i = 0; 0 == err && i < param_count; i++) {
			guint16 param_type;

			err = err || FUNC7(packet, &param_type);

			if (0 == err) {
				network_mysqld_type_t *param;

				param = FUNC11(param_type & 0xff);
				if (NULL == param) {
					FUNC0("%s: couldn't create type = %d", G_STRLOC, param_type & 0xff);

					err = -1;
					break;
				}
				param->is_null = (nul_bits->str[i / 8] & (1 << (i % 8))) != 0;
				param->is_unsigned = (param_type & 0x8000) != 0;

				FUNC1(stmt_execute_packet->params, param);
			}
		}

		for (i = 0; 0 == err && i < param_count; i++) {
			network_mysqld_type_t *param = FUNC2(stmt_execute_packet->params, i);

			if (!param->is_null) {
				err = err || FUNC5(packet, param);
			}
		}
	}

	FUNC3(nul_bits, TRUE);

	return err ? -1 : 0;
}