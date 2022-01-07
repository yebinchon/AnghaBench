
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf ;
struct TYPE_5__ {char* external_name; scalar_t__ kind; char* name; TYPE_1__* home_package; } ;
struct TYPE_4__ {char* external_name; } ;
typedef TYPE_2__ Sym ;


 scalar_t__ SYM_CONST ;
 int assert (char const*) ;
 int gen_name_map ;
 TYPE_2__* get_resolved_sym (void const*) ;
 char* map_get (int *,void const*) ;
 int map_put (int *,void const*,void*) ;
 char* strf (char*,char const*,char*) ;
 char toupper (char const) ;

const char *get_gen_name_or_default(const void *ptr, const char *default_name) {
    const char *name = map_get(&gen_name_map, ptr);
    if (!name) {
        Sym *sym = get_resolved_sym(ptr);
        if (sym) {
            if (sym->external_name) {
                name = sym->external_name;
            } else if (sym->home_package->external_name) {
                const char *external_name = sym->home_package->external_name;
                char buf[256];
                if (sym->kind == SYM_CONST) {
                    char *ptr = buf;
                    for (const char *str = external_name; *str && ptr < buf + sizeof(buf) - 1; str++, ptr++) {
                        *ptr = toupper(*str);
                    }
                    *ptr = 0;
                    if (ptr < buf + sizeof(buf)) {
                        external_name = buf;
                    }
                }
                name = strf("%s%s", external_name, sym->name);
            } else {
                name = sym->name;
            }
        } else {
            assert(default_name);
            name = default_name;
        }
        map_put(&gen_name_map, ptr, (void *)name);
    }
    return name;
}
