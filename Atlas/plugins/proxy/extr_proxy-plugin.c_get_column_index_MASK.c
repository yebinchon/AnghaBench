#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sql_token_id ;
struct TYPE_6__ {scalar_t__ token_id; TYPE_1__* text; } ;
typedef  TYPE_2__ sql_token ;
typedef  int guint ;
typedef  size_t gint ;
typedef  char gchar ;
struct TYPE_7__ {int len; scalar_t__ pdata; } ;
struct TYPE_5__ {char* str; } ;
typedef  TYPE_3__ GPtrArray ;
typedef  int /*<<< orphan*/  GArray ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ TK_CBRACE ; 
 scalar_t__ TK_DOT ; 
 scalar_t__ TK_EQ ; 
 scalar_t__ TK_LITERAL ; 
 scalar_t__ TK_OBRACE ; 
 scalar_t__ TK_SQL_SET ; 
 scalar_t__ TK_SQL_WHERE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

GArray* FUNC3(GPtrArray* tokens, gchar* table_name, gchar* column_name, guint sql_type, gint start) {
	GArray* columns = FUNC1(FALSE, FALSE, sizeof(guint));

	sql_token** ts = (sql_token**)(tokens->pdata);
	guint len = tokens->len;
	guint i, j, k;

	if (sql_type == 1) {
		for (i = start; i < len; ++i) {
			if (ts[i]->token_id == TK_SQL_WHERE) {
				for (j = i+1; j < len-2; ++j) {
					if (ts[j]->token_id == TK_LITERAL && FUNC2(ts[j]->text->str, column_name) == 0) {
						if (ts[j+1]->token_id == TK_EQ) {
							if (ts[j-1]->token_id != TK_DOT || FUNC2(ts[j-2]->text->str, table_name) == 0) {
								k = j + 2;
								FUNC0(columns, k);
								break;
							}
						} else if (j + 3 < len && FUNC2(ts[j+1]->text->str, "IN") == 0 && ts[j+2]->token_id == TK_OBRACE) {
							k = j + 3;
							FUNC0(columns, k);
							while ((k += 2) < len && ts[k-1]->token_id != TK_CBRACE) {
								FUNC0(columns, k);
							}
							break;
						}
					}
				}
				break;
			}
		}
	} else if (sql_type == 2) {
		for (i = start; i < len; ++i) {
			if (ts[i]->token_id == TK_SQL_WHERE) {
				for (j = i+1; j < len-2; ++j) {
					if (ts[j]->token_id == TK_LITERAL && FUNC2(ts[j]->text->str, column_name) == 0) {
						if (ts[j+1]->token_id == TK_EQ) {
							if (ts[j-1]->token_id != TK_DOT || FUNC2(ts[j-2]->text->str, table_name) == 0) {
								k = j + 2;
								FUNC0(columns, k);
								break;
							}
						} else if (j + 3 < len && FUNC2(ts[j+1]->text->str, "IN") == 0 && ts[j+2]->token_id == TK_OBRACE) {
							k = j + 3;
							FUNC0(columns, k);
							while ((k += 2) < len && ts[k-1]->token_id != TK_CBRACE) {
								FUNC0(columns, k);
							}
							break;
						}
					}
				}
				break;
			}
		}
	} else if (sql_type == 3) {
		sql_token_id token_id = ts[start]->token_id;

		if (token_id == TK_SQL_SET) {
			for (i = start+1; i < len-2; ++i) {
				if (ts[i]->token_id == TK_LITERAL && FUNC2(ts[i]->text->str, column_name) == 0) {
					k = i + 2;
					FUNC0(columns, k);
					break;
				}
			}
		} else {
			k = 2;
			if (token_id == TK_OBRACE) {
				gint found = -1;
				for (j = start+1; j < len; ++j) {
					token_id = ts[j]->token_id;
					if (token_id == TK_CBRACE) break;
					if (token_id == TK_LITERAL && FUNC2(ts[j]->text->str, column_name) == 0) {
						if (ts[j-1]->token_id != TK_DOT || FUNC2(ts[j-2]->text->str, table_name) == 0) {
							found = j;
							break;
						}
					}
				}
				k = found - start + 1;
			}

			for (i = start; i < len-1; ++i) {
				gchar* str = ts[i]->text->str;
				if ((FUNC2(str, "VALUES") == 0 || FUNC2(str, "VALUE") == 0) && ts[i+1]->token_id == TK_OBRACE) {
					k += i;
					if (k < len) FUNC0(columns, k);
					break;
				}
			}
		}
	}

	return columns;
}