
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int align; } ;


 int expect (char) ;
 scalar_t__ is_type (int ) ;
 int peek () ;
 TYPE_1__* read_cast_type () ;
 int read_intexpr () ;

__attribute__((used)) static int read_alignas() {


    expect('(');
    int r = is_type(peek())
        ? read_cast_type()->align
        : read_intexpr();
    expect(')');
    return r;
}
