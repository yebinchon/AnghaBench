
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ uint32_t ;


 int issymchar (char) ;
 char* memchr (char*,char,scalar_t__) ;

__attribute__((used)) static uint32_t
count_symbols(char * file, vm_size_t file_size)
{
    uint32_t nsyms = 0;
    char * scan;
    char * eol;
    char * next;

    for (scan = file; 1; scan = next) {

        eol = memchr(scan, '\n', file_size - (scan - file));
        if (eol == ((void*)0)) {
            break;
        }
        next = eol + 1;



        if (eol == scan) {
            continue;
        }



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
        nsyms++;
    }

    return nsyms;
}
