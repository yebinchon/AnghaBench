
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;


 int TNUMBER ;
 int format (char*,scalar_t__) ;
 int make_token_pushback (int *,int ,int ) ;
 scalar_t__ stream_depth () ;

__attribute__((used)) static void handle_include_level_macro(Token *tmpl) {
    make_token_pushback(tmpl, TNUMBER, format("%d", stream_depth() - 1));
}
