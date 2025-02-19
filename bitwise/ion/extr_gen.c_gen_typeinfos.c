
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 scalar_t__ flag_notypeinfo ;
 int gen_indent ;
 int gen_typeinfo (int *) ;
 int genf (char*) ;
 int genln () ;
 int genlnf (char*,...) ;
 int * get_type_from_typeid (int) ;
 int is_excluded_typeinfo (int *) ;
 int next_typeid ;

void gen_typeinfos(void) {
    genlnf("#define TYPEID0(index, kind) ((ullong)(index) | ((ullong)(kind) << 24))");
    genlnf("#define TYPEID(index, kind, ...) ((ullong)(index) | ((ullong)sizeof(__VA_ARGS__) << 32) | ((ullong)(kind) << 24))");
    genln();
    if (flag_notypeinfo) {
        genlnf("int num_typeinfos;");
        genlnf("TypeInfo **typeinfos;");
    } else {
        int num_typeinfos = next_typeid;
        genlnf("TypeInfo *typeinfo_table[%d] = {", num_typeinfos);
        gen_indent++;
        for (int typeid = 0; typeid < num_typeinfos; typeid++) {
            genlnf("[%d] = ", typeid);
            Type *type = get_type_from_typeid(typeid);
            if (type && !is_excluded_typeinfo(type)) {
                gen_typeinfo(type);
            } else {
                genf("NULL, // No associated type");
            }
        }
        gen_indent--;
        genlnf("};");
        genln();
        genlnf("int num_typeinfos = %d;", num_typeinfos);
        genlnf("TypeInfo **typeinfos = (TypeInfo **)typeinfo_table;");
    }
}
