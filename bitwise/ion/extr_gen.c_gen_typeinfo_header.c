
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 int genf (char*,char const*,...) ;
 scalar_t__ type_sizeof (int *) ;
 char* type_to_cdecl (int *,char*) ;

void gen_typeinfo_header(const char *kind, Type *type) {
    if (type_sizeof(type) == 0) {
        genf("&(TypeInfo){%s, .size = 0, .align = 0", kind);
    } else {
        const char *ctype = type_to_cdecl(type, "");
        genf("&(TypeInfo){%s, .size = sizeof(%s), .align = alignof(%s)", kind, ctype, ctype);
    }
}
