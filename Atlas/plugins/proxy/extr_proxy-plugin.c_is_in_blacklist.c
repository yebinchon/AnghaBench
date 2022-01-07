
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ token_id; TYPE_1__* text; } ;
typedef TYPE_2__ sql_token ;
typedef int guint ;
typedef int gboolean ;
struct TYPE_7__ {int len; TYPE_2__** pdata; } ;
struct TYPE_5__ {int str; } ;
typedef TYPE_3__ GPtrArray ;


 int FALSE ;
 scalar_t__ TK_OBRACE ;
 scalar_t__ TK_SQL_DELETE ;
 scalar_t__ TK_SQL_UPDATE ;
 scalar_t__ TK_SQL_WHERE ;
 int TRUE ;
 scalar_t__ strcasecmp (int ,char*) ;

gboolean is_in_blacklist(GPtrArray* tokens) {
 guint len = tokens->len;
 if (len > 1) {
  guint i;

  sql_token* token = tokens->pdata[1];
  if (token->token_id == TK_SQL_DELETE || token->token_id == TK_SQL_UPDATE) {
   for (i = 2; i < len; ++i) {
    token = tokens->pdata[i];
    if (token->token_id == TK_SQL_WHERE) break;
   }
   if (i == len) return TRUE;
  }

  for (i = 2; i < len; ++i) {
   token = tokens->pdata[i];
   if (token->token_id == TK_OBRACE) {
    token = tokens->pdata[i-1];
    if (strcasecmp(token->text->str, "SLEEP") == 0) return TRUE;
   }
  }
 }

 return FALSE;
}
