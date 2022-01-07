
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KCONST ;
 int KRESTRICT ;
 int KVOLATILE ;
 scalar_t__ next_token (int ) ;

__attribute__((used)) static void skip_type_qualifiers() {
    while (next_token(KCONST) || next_token(KVOLATILE) || next_token(KRESTRICT));
}
