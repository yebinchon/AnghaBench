
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Package ;


 int add_package_decls (int *) ;
 int buf_len (int ) ;
 scalar_t__ builtin_package ;
 int * enter_package (int *) ;
 int import_all_package_symbols (scalar_t__) ;
 int init_builtin_syms () ;
 int leave_package (int *) ;
 int package_list ;
 int parse_package (int *) ;
 int process_package_imports (int *) ;

bool compile_package(Package *package) {
    if (!parse_package(package)) {
        return 0;
    }
    Package *old_package = enter_package(package);
    if (buf_len(package_list) == 1) {
        init_builtin_syms();
    }
    if (builtin_package) {
        import_all_package_symbols(builtin_package);
    }
    add_package_decls(package);
    process_package_imports(package);
    leave_package(old_package);
    return 1;
}
