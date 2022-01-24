#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  client; } ;
typedef  TYPE_2__ network_mysqld_con ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  size_t gsize ;
struct TYPE_25__ {TYPE_1__* sc; } ;
typedef  TYPE_3__ chassis ;
struct TYPE_27__ {int* str; } ;
struct TYPE_26__ {size_t len; struct TYPE_26__** pdata; void* type; struct TYPE_26__* name; } ;
struct TYPE_23__ {int /*<<< orphan*/ * L; } ;
typedef  TYPE_4__ MYSQL_FIELD ;
typedef  TYPE_5__ GString ;
typedef  TYPE_4__ GPtrArray ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  COM_INIT_DB 131 
#define  COM_QUERY 130 
#define  COM_QUIT 129 
 void* FIELD_TYPE_VAR_STRING ; 
#define  LUA_TTABLE 128 
 size_t NET_HEADER_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 () ; 
 TYPE_4__* FUNC6 (char*) ; 
 TYPE_4__* FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 char* FUNC18 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 char* FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__*) ; 
 TYPE_4__* FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (TYPE_4__*) ; 
 TYPE_4__* FUNC27 () ; 

int FUNC28(chassis *chas, network_mysqld_con *con, GString *s) {
	gsize i, j;
	GPtrArray *fields;
	GPtrArray *rows;
	GPtrArray *row;

	switch(s->str[NET_HEADER_SIZE]) {
	case COM_QUERY:
		fields = NULL;
		rows = NULL;
		row = NULL;

		/* support the basic commands sent by the mysql shell */
		if (0 == FUNC1(*(s->str + NET_HEADER_SIZE + 1), FUNC0("select @@version_comment limit 1"))) {
			MYSQL_FIELD *field;

			fields = FUNC27();

			field = FUNC25();
			field->name = FUNC6("@@version_comment");
			field->type = FIELD_TYPE_VAR_STRING;
			FUNC3(fields, field);

			rows = FUNC5();
			row = FUNC5();
			FUNC3(row, FUNC6("MySQL Enterprise Agent"));
			FUNC3(rows, row);

			FUNC24(con->client, fields, rows);
			
		} else if (0 == FUNC1(*(s->str + NET_HEADER_SIZE + 1), FUNC0("select USER()"))) {
			MYSQL_FIELD *field;

			fields = FUNC27();
			field = FUNC25();
			field->name = FUNC6("USER()");
			field->type = FIELD_TYPE_VAR_STRING;
			FUNC3(fields, field);

			rows = FUNC5();
			row = FUNC5();
			FUNC3(row, FUNC6("root"));
			FUNC3(rows, row);

			FUNC24(con->client, fields, rows);
		} else {
			MYSQL_FIELD *field = NULL;
			lua_State *L = chas->sc->L;

			if (0 == FUNC8(L, *(s->str + NET_HEADER_SIZE + 1)) &&
			    0 == FUNC13(L, 0, 1, 0)) {
				/* let's see what is on the stack
				 * - scalars are turned into strings
				 *   return "foo" 
				 * - 1-dim tables are turned into a single-row result-set
				 *   return { foo = "bar", baz = "foz" }
				 * - 2-dim tables are turned into a multi-row result-set
				 *   return { { foo = "bar" }, { "foz" } }
				 */
				switch (FUNC21(L, -1)) {
				case LUA_TTABLE:
					/* take the names from the fields */
					fields = FUNC27();

					FUNC15(L);
					while (FUNC12(L, -2) != 0) {
						if (FUNC11(L, -1)) {
							/* 2-dim table
							 * 
							 * we only only take the keys from the first row
							 * afterwards we ignore them
							 */
					
							FUNC15(L);
							while (FUNC12(L, -2) != 0) {
								if (!rows) {
									/* this is the 1st round, add the keys */
									FUNC16(L, fields);
								}

								if (!row) row = FUNC5();
								if (FUNC9(L, -1)) {
									FUNC3(row, FUNC6(FUNC17(L, -1) ? "TRUE" : "FALSE"));
								} else if (FUNC10(L, -1)) {
									FUNC3(row, FUNC7("%.0f", FUNC19(L, -1)));
								} else {
									FUNC3(row, FUNC6(FUNC20(L, -1)));
								}

								FUNC14(L, 1); /* pop the value, but keep the key on the stack */
							}
					
							if (!rows) rows = FUNC5();
							FUNC3(rows, row);

							row = NULL;
						} else {
							/* 1-dim table */
							FUNC16(L, fields);

							if (!row) row = FUNC5();
							if (FUNC9(L, -1)) {
								FUNC3(row, FUNC6(FUNC17(L, -1) ? "TRUE" : "FALSE"));
							} else if (FUNC10(L, -1)) {
								FUNC3(row, FUNC7("%.0f", FUNC19(L, -1)));
							} else {
								FUNC3(row, FUNC6(FUNC20(L, -1)));
							}
						}

						FUNC14(L, 1); /* pop the value, but keep the key on the stack */
					}

					if (row) {
						/* in 1-dim we have to append the row to the result-set,
						 * in 2-dim this is already done and row is NULL */
						if (!rows) rows = FUNC5();
						FUNC3(rows, row);
					}

					break;
				default:
					/* a scalar value */
					fields = FUNC27();
					field = FUNC25();
					field->name = FUNC6("lua");
					field->type = FIELD_TYPE_VAR_STRING;
					FUNC3(fields, field);
		
					rows = FUNC5();
					row = FUNC5();
					FUNC3(row, FUNC6(FUNC20(L, -1)));
					FUNC3(rows, row);

					break;
				}

				FUNC14(L, 1); /* get rid of the result */

				FUNC24(con->client, fields, rows);
			}

			/* if we don't have fields for the resultset, we should have a
			 * error-msg on the stack */
			if (!fields) {
				size_t err_len = 0;
				const char *err;

				err = FUNC18(L, -1, &err_len);

				FUNC22(con->client, err, err_len);
				
				FUNC14(L, 1);
			}
		}

		/* clean up */
		if (fields) {
			FUNC26(fields);
			fields = NULL;
		}

		if (rows) {
			for (i = 0; i < rows->len; i++) {
				row = rows->pdata[i];

				for (j = 0; j < row->len; j++) {
					FUNC2(row->pdata[j]);
				}

				FUNC4(row, TRUE);
			}
			FUNC4(rows, TRUE);
			rows = NULL;
		}

		break;
	case COM_QUIT:
		break;
	case COM_INIT_DB:
		FUNC23(con->client);
		break;
	default:
		FUNC22(con->client, FUNC0("unknown COM_*"));
		break;
	}

	return 0;
}