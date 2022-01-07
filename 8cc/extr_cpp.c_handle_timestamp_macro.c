
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int buf ;
struct TYPE_6__ {TYPE_1__* file; } ;
typedef TYPE_2__ Token ;
struct TYPE_5__ {int mtime; } ;


 int TSTRING ;
 int localtime (int *) ;
 int make_token_pushback (TYPE_2__*,int ,int ) ;
 int strdup (char*) ;
 int strftime (char*,int,char*,int ) ;

__attribute__((used)) static void handle_timestamp_macro(Token *tmpl) {


    char buf[30];
    strftime(buf, sizeof(buf), "%a %b %e %T %Y", localtime(&tmpl->file->mtime));
    make_token_pushback(tmpl, TSTRING, strdup(buf));
}
