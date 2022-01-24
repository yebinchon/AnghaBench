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
typedef  int /*<<< orphan*/  network_packet ;
struct TYPE_3__ {int charsetnr; int length; int type; int flags; int decimals; int /*<<< orphan*/  name; int /*<<< orphan*/  table; int /*<<< orphan*/  org_name; int /*<<< orphan*/  org_table; int /*<<< orphan*/  db; int /*<<< orphan*/  catalog; } ;
typedef  TYPE_1__ network_mysqld_proto_fielddef_t ;
typedef  int guint8 ;
typedef  int guint32 ;
typedef  void* guint16 ;

/* Variables and functions */
 int CLIENT_PROTOCOL_41 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 

int FUNC6(network_packet *packet, network_mysqld_proto_fielddef_t *field, guint32 capabilities) {
	int err = 0;

	if (capabilities & CLIENT_PROTOCOL_41) {
		guint16 field_charsetnr;
		guint32 field_length;
		guint8 field_type;
		guint16 field_flags;
		guint8 field_decimals;

		err = err || FUNC4(packet, &field->catalog, NULL);
		err = err || FUNC4(packet, &field->db, NULL);
		err = err || FUNC4(packet, &field->table, NULL);
		err = err || FUNC4(packet, &field->org_table, NULL);
		err = err || FUNC4(packet, &field->name, NULL);
		err = err || FUNC4(packet, &field->org_name, NULL);
        
		err = err || FUNC5(packet, 1); /* filler */
        
		err = err || FUNC0(packet, &field_charsetnr);
		err = err || FUNC2(packet, &field_length);
		err = err || FUNC3(packet,  &field_type);
		err = err || FUNC0(packet, &field_flags);
		err = err || FUNC3(packet,  &field_decimals);
        
		err = err || FUNC5(packet, 2); /* filler */
		if (!err) {
			field->charsetnr = field_charsetnr;
			field->length    = field_length;
			field->type      = field_type;
			field->flags     = field_flags;
			field->decimals  = field_decimals;
		}
	} else {
		guint8 len;
		guint32 field_length;
		guint8  field_type;
		guint8  field_decimals;

		/* see protocol.cc Protocol::send_fields */

		err = err || FUNC4(packet, &field->table, NULL);
		err = err || FUNC4(packet, &field->name, NULL);
		err = err || FUNC3(packet, &len);
		err = err || (len != 3);
		err = err || FUNC1(packet, &field_length);
		err = err || FUNC3(packet, &len);
		err = err || (len != 1);
		err = err || FUNC3(packet, &field_type);
		err = err || FUNC3(packet, &len);
		if (len == 3) { /* the CLIENT_LONG_FLAG is set */
			guint16 field_flags;

			err = err || FUNC0(packet, &field_flags);

			if (!err) field->flags = field_flags;
		} else if (len == 2) {
			guint8 field_flags;

			err = err || FUNC3(packet, &field_flags);

			if (!err) field->flags = field_flags;
		} else {
			err = -1;
		}
		err = err || FUNC3(packet, &field_decimals);

		if (!err) {
			field->charsetnr = 0x08 /* latin1_swedish_ci */;
			field->length    = field_length;
			field->type      = field_type;
			field->decimals  = field_decimals;
		}
	}

	return err ? -1 : 0;
}