
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* file; } ;
typedef TYPE_2__ Token ;
struct TYPE_5__ {int line; } ;


 int TNUMBER ;
 int format (char*,int ) ;
 int make_token_pushback (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void handle_line_macro(Token *tmpl) {
    make_token_pushback(tmpl, TNUMBER, format("%d", tmpl->file->line));
}
