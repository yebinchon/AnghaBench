
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; int line; } ;
struct TYPE_4__ {TYPE_1__ pos; } ;


 char const* line_start ;
 int next_token () ;
 char const* stream ;
 TYPE_2__ token ;

void init_stream(const char *name, const char *buf) {
    stream = buf;
    line_start = stream;
    token.pos.name = name ? name : "<string>";
    token.pos.line = 1;
    next_token();
}
