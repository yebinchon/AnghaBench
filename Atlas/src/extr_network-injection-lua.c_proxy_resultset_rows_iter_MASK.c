#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_6__* row; TYPE_5__* fields; } ;
typedef  TYPE_2__ proxy_resultset_t ;
struct TYPE_13__ {int offset; TYPE_1__* data; } ;
typedef  TYPE_3__ network_packet ;
typedef  int network_mysqld_lenenc_type ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int guint64 ;
typedef  scalar_t__ gsize ;
struct TYPE_16__ {struct TYPE_16__* next; TYPE_1__* data; } ;
struct TYPE_15__ {scalar_t__ len; } ;
struct TYPE_14__ {TYPE_2__* udata; } ;
struct TYPE_11__ {int len; int str; } ;
typedef  TYPE_4__ GRef ;
typedef  TYPE_5__ GPtrArray ;
typedef  TYPE_6__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  G_STRLOC ; 
#define  NETWORK_MYSQLD_LENENC_TYPE_EOF 131 
#define  NETWORK_MYSQLD_LENENC_TYPE_ERR 130 
#define  NETWORK_MYSQLD_LENENC_TYPE_INT 129 
#define  NETWORK_MYSQLD_LENENC_TYPE_NULL 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int*) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 
 scalar_t__ FUNC11 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC12(lua_State *L) {
	GRef *ref = *(GRef **)FUNC6(L, FUNC7(1));
	proxy_resultset_t *res = ref->udata;
	network_packet packet;
	GPtrArray *fields = res->fields;
	gsize i;
	int err = 0;
	network_mysqld_lenenc_type lenenc_type;
    
	GList *chunk = res->row;
    
	FUNC0(chunk != NULL, 0);

	packet.data = chunk->data;
	packet.offset = 0;

	err = err || FUNC11(&packet);
	err = err || FUNC9(&packet, &lenenc_type);
	FUNC0(err == 0, 0); /* protocol error */
    
	switch (lenenc_type) {
	case NETWORK_MYSQLD_LENENC_TYPE_ERR:
		/* a ERR packet instead of real rows
		 *
		 * like "explain select fld3 from t2 ignore index (fld3,not_existing)"
		 *
		 * see mysql-test/t/select.test
		 */
	case NETWORK_MYSQLD_LENENC_TYPE_EOF:
		/* if we find the 2nd EOF packet we are done */
		return 0;
	case NETWORK_MYSQLD_LENENC_TYPE_INT:
	case NETWORK_MYSQLD_LENENC_TYPE_NULL:
		break;
	}
    
	FUNC2(L);
    
	for (i = 0; i < fields->len; i++) {
		guint64 field_len;
        
		err = err || FUNC9(&packet, &lenenc_type);
		FUNC0(err == 0, 0); /* protocol error */

		switch (lenenc_type) {
		case NETWORK_MYSQLD_LENENC_TYPE_NULL:
			FUNC10(&packet, 1);
			FUNC4(L);
			break;
		case NETWORK_MYSQLD_LENENC_TYPE_INT:
			err = err || FUNC8(&packet, &field_len);
			err = err || !(field_len <= packet.data->len); /* just to check that we don't overrun by the addition */
			err = err || !(packet.offset + field_len <= packet.data->len); /* check that we have enough string-bytes for the length-encoded string */
			if (err) return FUNC1(L, "%s: row-data is invalid", G_STRLOC);
            
			FUNC3(L, packet.data->str + packet.offset, field_len);

			err = err || FUNC10(&packet, field_len);
			break;
		default:
			/* EOF and ERR should come up here */
			err = 1;
			break;
		}

		/* lua starts its tables at 1 */
		FUNC5(L, -2, i + 1);
		FUNC0(err == 0, 0); /* protocol error */
	}
    
	res->row = res->row->next;
    
	return 1;
}