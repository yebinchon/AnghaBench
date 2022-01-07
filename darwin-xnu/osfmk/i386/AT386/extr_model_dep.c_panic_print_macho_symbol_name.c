
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vm_address_t ;
struct symtab_command {scalar_t__ symoff; scalar_t__ stroff; unsigned int nsyms; } ;
struct load_command {scalar_t__ cmd; scalar_t__ cmdsize; } ;
struct TYPE_7__ {scalar_t__ vmaddr; scalar_t__ vmsize; scalar_t__ fileoff; int segname; } ;
typedef TYPE_2__ kernel_segment_command_t ;
struct TYPE_6__ {int n_strx; } ;
struct TYPE_8__ {int n_type; scalar_t__ n_value; TYPE_1__ n_un; } ;
typedef TYPE_3__ kernel_nlist_t ;
struct TYPE_9__ {unsigned int ncmds; } ;
typedef TYPE_4__ kernel_mach_header_t ;


 scalar_t__ LC_SEGMENT_KERNEL ;
 scalar_t__ LC_SYMTAB ;
 int N_STAB ;
 char* SEG_LINKEDIT ;
 char* SEG_TEXT ;
 int paniclog_append_noflush (char*,char const*,char*,...) ;
 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static int
panic_print_macho_symbol_name(kernel_mach_header_t *mh, vm_address_t search, const char *module_name)
{
    kernel_nlist_t *sym = ((void*)0);
    struct load_command *cmd;
    kernel_segment_command_t *orig_ts = ((void*)0), *orig_le = ((void*)0);
    struct symtab_command *orig_st = ((void*)0);
    unsigned int i;
    char *strings, *bestsym = ((void*)0);
    vm_address_t bestaddr = 0, diff, curdiff;



    cmd = (struct load_command *) &mh[1];
    for (i = 0; i < mh->ncmds; i++) {
        if (cmd->cmd == LC_SEGMENT_KERNEL) {
            kernel_segment_command_t *orig_sg = (kernel_segment_command_t *) cmd;

            if (strncmp(SEG_TEXT, orig_sg->segname,
        sizeof(orig_sg->segname)) == 0)
                orig_ts = orig_sg;
            else if (strncmp(SEG_LINKEDIT, orig_sg->segname,
        sizeof(orig_sg->segname)) == 0)
                orig_le = orig_sg;
            else if (strncmp("", orig_sg->segname,
        sizeof(orig_sg->segname)) == 0)
                orig_ts = orig_sg;
        }
        else if (cmd->cmd == LC_SYMTAB)
            orig_st = (struct symtab_command *) cmd;

        cmd = (struct load_command *) ((uintptr_t) cmd + cmd->cmdsize);
    }

    if ((orig_ts == ((void*)0)) || (orig_st == ((void*)0)) || (orig_le == ((void*)0)))
        return 0;

    if ((search < orig_ts->vmaddr) ||
        (search >= orig_ts->vmaddr + orig_ts->vmsize)) {

        return 0;
    }

    sym = (kernel_nlist_t *)(uintptr_t)(orig_le->vmaddr + orig_st->symoff - orig_le->fileoff);
    strings = (char *)(uintptr_t)(orig_le->vmaddr + orig_st->stroff - orig_le->fileoff);
    diff = search;

    for (i = 0; i < orig_st->nsyms; i++) {
        if (sym[i].n_type & N_STAB) continue;

        if (sym[i].n_value <= search) {
            curdiff = search - (vm_address_t)sym[i].n_value;
            if (curdiff < diff) {
                diff = curdiff;
                bestaddr = sym[i].n_value;
                bestsym = strings + sym[i].n_un.n_strx;
            }
        }
    }

    if (bestsym != ((void*)0)) {
        if (diff != 0) {
            paniclog_append_noflush("%s : %s + 0x%lx", module_name, bestsym, (unsigned long)diff);
        } else {
            paniclog_append_noflush("%s : %s", module_name, bestsym);
        }
        return 1;
    }
    return 0;
}
