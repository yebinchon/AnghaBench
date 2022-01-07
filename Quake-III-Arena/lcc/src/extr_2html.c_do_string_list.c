
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_ty ;


 int do_generic_string ;
 int do_list (int ,int ,char*,char*,char*) ;

__attribute__((used)) static void do_string_list(list_ty x) {
 do_list(x, do_generic_string, "string", "ol", "");
}
