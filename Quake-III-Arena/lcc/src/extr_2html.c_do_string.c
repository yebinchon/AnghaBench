
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; char* str; } ;
typedef TYPE_1__ string_ty ;


 int printf (char*,int,char*) ;

__attribute__((used)) static void do_string(string_ty x) {
 printf("%d,<code>'%s'</code>", x.len, x.str);
}
