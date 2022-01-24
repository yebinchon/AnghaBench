#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  int uint32_t ;
struct symbol {char* name; unsigned int name_len; char* indirect; unsigned int indirect_len; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  optionstr ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  kObsolete ; 
 char* FUNC5 (char*,char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,unsigned int) ; 

__attribute__((used)) static uint32_t
FUNC8(char * file, vm_size_t file_size, struct symbol * symbols, uint32_t idx, uint32_t max_symbols)
{
    char *   scan;
    char *   line;
    char *   eol;
    char *   next;

    uint32_t strtabsize;

    strtabsize = 0;

    for (scan = file, line = file; true; scan = next, line = next) {

        char *       name = NULL;
        char *       name_term = NULL;
        unsigned int name_len = 0;
        char *       indirect = NULL;
        char *       indirect_term = NULL;
        unsigned int indirect_len = 0;
        char *       option = NULL;
        char *       option_term = NULL;
        unsigned int option_len = 0;
        char         optionstr[256];
        boolean_t    obsolete = 0;

        eol = FUNC5(scan, '\n', file_size - (scan - file));
        if (eol == NULL) {
            break;
        }
        next = eol + 1;

       /* Skip empty lines.
        */
        if (eol == scan) {
            continue;
        }

        *eol = '\0';

       /* Skip comment lines.
        */
        if (scan[0] == '#') {
            continue;
        }

       /* Scan past any non-symbol characters at the beginning of the line. */
        while ((scan < eol) && !FUNC3(*scan)) {
            scan++;
        }

       /* No symbol on line? Move along.
        */
        if (scan == eol) {
            continue;
        }

       /* Skip symbols starting with '.'.
        */
        if (scan[0] == '.') {
            continue;
        }

        name = scan;

       /* Find the end of the symbol.
        */
        while ((*scan != '\0') && FUNC3(*scan)) {
            scan++;
        }

       /* Note char past end of symbol.
        */
        name_term = scan;

       /* Stored length must include the terminating nul char.
        */
        name_len = name_term - name + 1;

       /* Now look for an indirect.
        */
        if (*scan != '\0') {
            while ((*scan != '\0') && FUNC4(*scan)) {
                scan++;
            }
            if (*scan == ':') {
                scan++;
                while ((*scan != '\0') && FUNC4(*scan)) {
                    scan++;
                }
                if (FUNC3(*scan)) {
                    indirect = scan;

                   /* Find the end of the symbol.
                    */
                    while ((*scan != '\0') && FUNC3(*scan)) {
                        scan++;
                    }

                   /* Note char past end of symbol.
                    */
                    indirect_term = scan;

                   /* Stored length must include the terminating nul char.
                    */
                    indirect_len = indirect_term - indirect + 1;

                } else if (*scan == '\0') {
		    FUNC1(stderr, "bad format in symbol line: %s\n", line);
		    FUNC0(1);
		}
            } else if (*scan != '\0' && *scan != '-') {
                FUNC1(stderr, "bad format in symbol line: %s\n", line);
                FUNC0(1);
            }
        }

        /* Look for options.
         */
        if (*scan != '\0') {
            while ((*scan != '\0') && FUNC4(*scan)) {
                scan++;
            }

            if (*scan == '-') {
                scan++;

                if (FUNC2(*scan)) {
                    option = scan;

                   /* Find the end of the option.
                    */
                    while ((*scan != '\0') && FUNC2(*scan)) {
                        scan++;
                    }

                   /* Note char past end of option.
                    */
                    option_term = scan;
                    option_len = option_term - option;

                    if (option_len >= sizeof(optionstr)) {
                        FUNC1(stderr, "option too long in symbol line: %s\n", line);
                        FUNC0(1);
                    }
                    FUNC6(optionstr, option, option_len);
                    optionstr[option_len] = '\0';

                    /* Find the option.
                     */
                    if (!FUNC7(optionstr, "obsolete", option_len)) {
                        obsolete = TRUE;
                    }

                } else if (*scan == '\0') {
		    FUNC1(stderr, "bad format in symbol line: %s\n", line);
		    FUNC0(1);
		}

            }

        }

        if(idx >= max_symbols) {
            FUNC1(stderr, "symbol[%d/%d] overflow: %s\n", idx, max_symbols, line);
            FUNC0(1);
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