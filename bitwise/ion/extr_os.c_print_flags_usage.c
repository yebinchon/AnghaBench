
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int note ;
typedef int format ;
struct TYPE_5__ {char** s; int* i; } ;
struct TYPE_6__ {int kind; char* name; char* arg_name; int num_options; char** options; char* help; TYPE_1__ ptr; } ;
typedef TYPE_2__ FlagDef ;





 size_t buf_len (TYPE_2__*) ;
 TYPE_2__* flag_defs ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,...) ;

void print_flags_usage(void) {
    printf("Flags:\n");
    for (size_t i = 0; i < buf_len(flag_defs); i++) {
        FlagDef flag = flag_defs[i];
        char note[256] = {0};
        char format[256];
        switch (flag.kind) {
        case 128:
            snprintf(format, sizeof(format), "%s <%s>", flag.name, flag.arg_name ? flag.arg_name : "value");
            if (*flag.ptr.s) {
                snprintf(note, sizeof(note), "(default: %s)", *flag.ptr.s);
            }
            break;
        case 129: {
            char *end = format + sizeof(format);
            char *ptr = format;
            ptr += snprintf(ptr, end - ptr, "%s <", flag.name);
            for (int k = 0; k < flag.num_options; k++) {
                ptr += snprintf(ptr, end - ptr, "%s%s", k == 0 ? "" : "|", flag.options[k]);
                if (k == *flag.ptr.i) {
                    snprintf(note, sizeof(note), " (default: %s)", flag.options[k]);
                }
            }
            snprintf(ptr, end - ptr, ">");
            break;
        }
        case 130:
        default:
            snprintf(format, sizeof(format), "%s", flag.name);
            break;
        }
        printf(" -%-32s %s%s\n", format, flag.help ? flag.help : "", note);
    }
}
