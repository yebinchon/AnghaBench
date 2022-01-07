
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sql_token_id ;
struct TYPE_4__ {scalar_t__ token_id; } ;
typedef TYPE_1__ sql_token ;
typedef int guint ;
typedef int gboolean ;
struct TYPE_5__ {int len; scalar_t__ pdata; } ;
typedef TYPE_2__ GPtrArray ;


 scalar_t__ TK_COMMENT ;
 scalar_t__ TK_SQL_DESC ;
 scalar_t__ TK_SQL_EXPLAIN ;
 scalar_t__ TK_SQL_SELECT ;
 scalar_t__ TK_SQL_USE ;
 int TRUE ;

gboolean sql_is_write(GPtrArray *tokens) {
 sql_token **ts = (sql_token**)(tokens->pdata);
 guint len = tokens->len;

 if (len > 1) {
  guint i = 1;
  sql_token_id token_id = ts[i]->token_id;

  while (token_id == TK_COMMENT && ++i < len) {
   token_id = ts[i]->token_id;
  }


  return (token_id != TK_SQL_SELECT && token_id != TK_SQL_USE && token_id != TK_SQL_DESC && token_id != TK_SQL_EXPLAIN);
 }

 return TRUE;
}
