
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ kind; int c; } ;
typedef TYPE_1__ Token ;
struct TYPE_8__ {scalar_t__ kind; } ;


 scalar_t__ TINVALID ;
 scalar_t__ TSTRING ;
 int concatenate_string (TYPE_1__*) ;
 int errort (TYPE_1__*,char*,int ) ;
 TYPE_3__* peek () ;
 TYPE_1__* read_token () ;

__attribute__((used)) static Token *get() {
    Token *r = read_token();
    if (r->kind == TINVALID)
        errort(r, "stray character in program: '%c'", r->c);
    if (r->kind == TSTRING && peek()->kind == TSTRING)
        concatenate_string(r);
    return r;
}
