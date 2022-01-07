
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int uint32_t ;
struct symbol {char* name; unsigned int name_len; char* indirect; unsigned int indirect_len; int flags; } ;
typedef int optionstr ;
typedef scalar_t__ boolean_t ;


 scalar_t__ TRUE ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ isalpha (char) ;
 scalar_t__ issymchar (char) ;
 scalar_t__ iswhitespace (char) ;
 int kObsolete ;
 char* memchr (char*,char,scalar_t__) ;
 int memcpy (char*,char*,unsigned int) ;
 int stderr ;
 int strncmp (char*,char*,unsigned int) ;

__attribute__((used)) static uint32_t
store_symbols(char * file, vm_size_t file_size, struct symbol * symbols, uint32_t idx, uint32_t max_symbols)
{
    char * scan;
    char * line;
    char * eol;
    char * next;

    uint32_t strtabsize;

    strtabsize = 0;

    for (scan = file, line = file; 1; scan = next, line = next) {

        char * name = ((void*)0);
        char * name_term = ((void*)0);
        unsigned int name_len = 0;
        char * indirect = ((void*)0);
        char * indirect_term = ((void*)0);
        unsigned int indirect_len = 0;
        char * option = ((void*)0);
        char * option_term = ((void*)0);
        unsigned int option_len = 0;
        char optionstr[256];
        boolean_t obsolete = 0;

        eol = memchr(scan, '\n', file_size - (scan - file));
        if (eol == ((void*)0)) {
            break;
        }
        next = eol + 1;



        if (eol == scan) {
            continue;
        }

        *eol = '\0';



        if (scan[0] == '#') {
            continue;
        }


        while ((scan < eol) && !issymchar(*scan)) {
            scan++;
        }



        if (scan == eol) {
            continue;
        }



        if (scan[0] == '.') {
            continue;
        }

        name = scan;



        while ((*scan != '\0') && issymchar(*scan)) {
            scan++;
        }



        name_term = scan;



        name_len = name_term - name + 1;



        if (*scan != '\0') {
            while ((*scan != '\0') && iswhitespace(*scan)) {
                scan++;
            }
            if (*scan == ':') {
                scan++;
                while ((*scan != '\0') && iswhitespace(*scan)) {
                    scan++;
                }
                if (issymchar(*scan)) {
                    indirect = scan;



                    while ((*scan != '\0') && issymchar(*scan)) {
                        scan++;
                    }



                    indirect_term = scan;



                    indirect_len = indirect_term - indirect + 1;

                } else if (*scan == '\0') {
      fprintf(stderr, "bad format in symbol line: %s\n", line);
      exit(1);
  }
            } else if (*scan != '\0' && *scan != '-') {
                fprintf(stderr, "bad format in symbol line: %s\n", line);
                exit(1);
            }
        }



        if (*scan != '\0') {
            while ((*scan != '\0') && iswhitespace(*scan)) {
                scan++;
            }

            if (*scan == '-') {
                scan++;

                if (isalpha(*scan)) {
                    option = scan;



                    while ((*scan != '\0') && isalpha(*scan)) {
                        scan++;
                    }



                    option_term = scan;
                    option_len = option_term - option;

                    if (option_len >= sizeof(optionstr)) {
                        fprintf(stderr, "option too long in symbol line: %s\n", line);
                        exit(1);
                    }
                    memcpy(optionstr, option, option_len);
                    optionstr[option_len] = '\0';



                    if (!strncmp(optionstr, "obsolete", option_len)) {
                        obsolete = TRUE;
                    }

                } else if (*scan == '\0') {
      fprintf(stderr, "bad format in symbol line: %s\n", line);
      exit(1);
  }

            }

        }

        if(idx >= max_symbols) {
            fprintf(stderr, "symbol[%d/%d] overflow: %s\n", idx, max_symbols, line);
            exit(1);
        }

        *name_term = '\0';
        if (indirect_term) {
            *indirect_term = '\0';
        }

        symbols[idx].name = name;
        symbols[idx].name_len = name_len;
        symbols[idx].indirect = indirect;
        symbols[idx].indirect_len = indirect_len;
        symbols[idx].flags = (obsolete) ? kObsolete : 0;

        strtabsize += symbols[idx].name_len + symbols[idx].indirect_len;
        idx++;
    }

    return strtabsize;
}
