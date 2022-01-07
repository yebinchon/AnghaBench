
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int current_package ;
 int sym_global_type (char*,int ) ;
 int type_bool ;
 int type_char ;
 int type_double ;
 int type_float ;
 int type_int ;
 int type_llong ;
 int type_long ;
 int type_schar ;
 int type_short ;
 int type_uchar ;
 int type_uint ;
 int type_ullong ;
 int type_ulong ;
 int type_ushort ;
 int type_void ;

void init_builtin_syms() {
    assert(current_package);
    sym_global_type("void", type_void);
    sym_global_type("bool", type_bool);
    sym_global_type("char", type_char);
    sym_global_type("schar", type_schar);
    sym_global_type("uchar", type_uchar);
    sym_global_type("short", type_short);
    sym_global_type("ushort", type_ushort);
    sym_global_type("int", type_int);
    sym_global_type("uint", type_uint);
    sym_global_type("long", type_long);
    sym_global_type("ulong", type_ulong);
    sym_global_type("llong", type_llong);
    sym_global_type("ullong", type_ullong);
    sym_global_type("float", type_float);
    sym_global_type("double", type_double);
}
