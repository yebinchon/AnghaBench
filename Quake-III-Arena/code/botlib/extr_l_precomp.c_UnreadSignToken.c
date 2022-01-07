
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int subtype; int type; int string; scalar_t__ linescrossed; int endwhitespace_p; int whitespace_p; int line; } ;
typedef TYPE_2__ token_t ;
struct TYPE_9__ {TYPE_1__* scriptstack; } ;
typedef TYPE_3__ source_t ;
struct TYPE_7__ {int script_p; int line; } ;


 int PC_UnreadSourceToken (TYPE_3__*,TYPE_2__*) ;
 int P_SUB ;
 int TT_PUNCTUATION ;
 int strcpy (int ,char*) ;

void UnreadSignToken(source_t *source)
{
 token_t token;

 token.line = source->scriptstack->line;
 token.whitespace_p = source->scriptstack->script_p;
 token.endwhitespace_p = source->scriptstack->script_p;
 token.linescrossed = 0;
 strcpy(token.string, "-");
 token.type = TT_PUNCTUATION;
 token.subtype = P_SUB;
 PC_UnreadSourceToken(source, &token);
}
