
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string_ty ;


 int do_string (int ) ;

__attribute__((used)) static void do_generic_string(void *x) {
 do_string(*(string_ty *)x);
}
