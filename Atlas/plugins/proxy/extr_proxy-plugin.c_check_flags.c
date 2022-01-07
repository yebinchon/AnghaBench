
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ token_id; TYPE_1__* text; } ;
typedef TYPE_2__ sql_token ;
struct TYPE_9__ {int is_in_select_calc_found_rows; int locks; } ;
typedef TYPE_3__ network_mysqld_con ;
typedef int guint ;
typedef int gchar ;
struct TYPE_10__ {int len; scalar_t__ pdata; } ;
struct TYPE_7__ {int * str; } ;
typedef TYPE_4__ GPtrArray ;


 int FALSE ;
 scalar_t__ TK_SQL_SELECT ;
 scalar_t__ TK_SQL_SQL_CALC_FOUND_ROWS ;
 int TRUE ;
 int g_hash_table_add (int ,int ) ;
 int g_hash_table_lookup (int ,int *) ;
 int g_strdup (int *) ;
 scalar_t__ strcasecmp (int *,char*) ;

void check_flags(GPtrArray* tokens, network_mysqld_con* con) {
 con->is_in_select_calc_found_rows = FALSE;

 sql_token** ts = (sql_token**)(tokens->pdata);
 guint len = tokens->len;

 if (len > 2) {
  if (ts[1]->token_id == TK_SQL_SELECT && strcasecmp(ts[2]->text->str, "GET_LOCK") == 0) {
   gchar* key = ts[4]->text->str;
   if (!g_hash_table_lookup(con->locks, key)) g_hash_table_add(con->locks, g_strdup(key));
  }
 }

 guint i;
 for (i = 1; i < len; ++i) {
  sql_token* token = ts[i];
  if (ts[i]->token_id == TK_SQL_SQL_CALC_FOUND_ROWS) {
   con->is_in_select_calc_found_rows = TRUE;
   break;
  }
 }
}
