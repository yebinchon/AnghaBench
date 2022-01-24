#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int server_status; scalar_t__ warning_count; scalar_t__ query_status; int /*<<< orphan*/  insert_id; scalar_t__ was_resultset; int /*<<< orphan*/  affected_rows; scalar_t__ binary_encoded; } ;
struct TYPE_13__ {scalar_t__ rows; scalar_t__ bytes; TYPE_3__ qstat; TYPE_2__* result_queue; scalar_t__ rows_chunk_head; scalar_t__ row; scalar_t__ fields; } ;
typedef  TYPE_4__ proxy_resultset_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  gsize ;
struct TYPE_15__ {TYPE_4__* udata; } ;
struct TYPE_14__ {scalar_t__ len; scalar_t__ str; } ;
struct TYPE_11__ {TYPE_1__* head; } ;
struct TYPE_10__ {TYPE_5__* data; } ;
typedef  TYPE_5__ GString ;
typedef  TYPE_6__ GRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ MYSQLD_PACKET_NULL ; 
 int SERVER_QUERY_NO_GOOD_INDEX_USED ; 
 int SERVER_QUERY_NO_INDEX_USED ; 
 int SERVER_STATUS_AUTOCOMMIT ; 
 int SERVER_STATUS_IN_TRANS ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  proxy_resultset_rows_iter ; 
 scalar_t__ FUNC15 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(lua_State *L) {
	GRef *ref = *(GRef **)FUNC2(L);
	proxy_resultset_t *res = ref->udata;
	gsize keysize = 0;
	const char *key = FUNC1(L, 2, &keysize);
    
	if (FUNC15(key, keysize, FUNC0("fields"))) {
		if (!res->result_queue) {
			FUNC3(L, ".resultset.fields isn't available if 'resultset_is_needed ~= true'");
		} else {
			if (0 != FUNC12(res)) {
				/* failed */
			}
		
			if (res->fields) {
				FUNC13(L, ref);
			} else {
				FUNC9(L);
			}
		}
	} else if (FUNC15(key, keysize, FUNC0("rows"))) {
		if (!res->result_queue) {
			FUNC3(L, ".resultset.rows isn't available if 'resultset_is_needed ~= true'");
		} else if (res->qstat.binary_encoded) {
			FUNC3(L, ".resultset.rows isn't available for prepared statements");
		} else {
			FUNC12(res); /* set up the ->rows_chunk_head pointer */
		
			if (res->rows_chunk_head) {
				res->row    = res->rows_chunk_head;

				FUNC14(L, ref);
		    
				FUNC6(L, proxy_resultset_rows_iter, 1);
			} else {
				FUNC9(L);
			}
		}
	} else if (FUNC15(key, keysize, FUNC0("row_count"))) {
		FUNC7(L, res->rows);
	} else if (FUNC15(key, keysize, FUNC0("bytes"))) {
		FUNC7(L, res->bytes);
	} else if (FUNC15(key, keysize, FUNC0("raw"))) {
		if (!res->result_queue) {
			FUNC3(L, ".resultset.raw isn't available if 'resultset_is_needed ~= true'");
		} else {
			GString *s;
			s = res->result_queue->head->data;
			FUNC8(L, s->str + 4, s->len - 4); /* skip the network-header */
		}
	} else if (FUNC15(key, keysize, FUNC0("flags"))) {
		FUNC4(L);
		FUNC5(L, (res->qstat.server_status & SERVER_STATUS_IN_TRANS) != 0);
		FUNC11(L, -2, "in_trans");
        
		FUNC5(L, (res->qstat.server_status & SERVER_STATUS_AUTOCOMMIT) != 0);
		FUNC11(L, -2, "auto_commit");
		
		FUNC5(L, (res->qstat.server_status & SERVER_QUERY_NO_GOOD_INDEX_USED) != 0);
		FUNC11(L, -2, "no_good_index_used");
		
		FUNC5(L, (res->qstat.server_status & SERVER_QUERY_NO_INDEX_USED) != 0);
		FUNC11(L, -2, "no_index_used");
	} else if (FUNC15(key, keysize, FUNC0("warning_count"))) {
		FUNC7(L, res->qstat.warning_count);
	} else if (FUNC15(key, keysize, FUNC0("affected_rows"))) {
		/**
		 * if the query had a result-set (SELECT, ...) 
		 * affected_rows and insert_id are not valid
		 */
		if (res->qstat.was_resultset) {
			FUNC9(L);
		} else {
			FUNC10(L, res->qstat.affected_rows);
		}
	} else if (FUNC15(key, keysize, FUNC0("insert_id"))) {
		if (res->qstat.was_resultset) {
			FUNC9(L);
		} else {
			FUNC10(L, res->qstat.insert_id);
		}
	} else if (FUNC15(key, keysize, FUNC0("query_status"))) {
		/* hmm, is there another way to figure out if this is a 'resultset' ?
		 * one that doesn't require the parse the meta-data  */

		if (res->qstat.query_status == MYSQLD_PACKET_NULL) {
			FUNC9(L);
		} else {
			FUNC7(L, res->qstat.query_status);
		}
	} else {
		FUNC9(L);
	}
    
	return 1;
}