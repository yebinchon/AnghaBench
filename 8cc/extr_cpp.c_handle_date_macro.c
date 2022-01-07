
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int Token ;


 int TSTRING ;
 int make_token_pushback (int *,int ,int ) ;
 int now ;
 int strdup (char*) ;
 int strftime (char*,int,char*,int *) ;

__attribute__((used)) static void handle_date_macro(Token *tmpl) {
    char buf[20];
    strftime(buf, sizeof(buf), "%b %e %Y", &now);
    make_token_pushback(tmpl, TSTRING, strdup(buf));
}
