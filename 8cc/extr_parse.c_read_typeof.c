
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Type ;
struct TYPE_2__ {int * ty; } ;


 int expect (char) ;
 scalar_t__ is_type (int ) ;
 int peek () ;
 int * read_cast_type () ;
 TYPE_1__* read_comma_expr () ;

__attribute__((used)) static Type *read_typeof() {
    expect('(');
    Type *r = is_type(peek())
        ? read_cast_type()
        : read_comma_expr()->ty;
    expect(')');
    return r;
}
