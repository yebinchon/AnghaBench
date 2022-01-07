
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int hexbuf ;
typedef int buf2 ;
typedef int buf1 ;
struct TYPE_4__ {scalar_t__ cycles; int PC; int SR; int* D; int* A; } ;


 int HEXIT (char*,int,int) ;
 int READU16 (TYPE_1__*,int) ;
 int SR_C ;
 int SR_N ;
 int SR_V ;
 int SR_X ;
 int SR_Z ;
 scalar_t__ UNLIKELY (int) ;
 int _IOFBF ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int fwrite (char*,int,int,int *) ;
 int * logfile ;
 int memcpy (char*,char const*,int) ;
 int memset (char*,char,int) ;
 int pclose (int *) ;
 int perror (char*) ;
 int * popen (char*,char*) ;
 char* q68_disassemble (TYPE_1__*,int,int*) ;
 int setvbuf (int *,int *,int ,int) ;
 scalar_t__ snprintf (char*,int,char*,...) ;
 TYPE_1__* state ;
 int strlen (char const*) ;
 scalar_t__ total_cycles ;
 scalar_t__ const trace_start ;
 scalar_t__ const trace_stop ;

void q68_trace(void)
{
    const uint64_t cycles = total_cycles + state->cycles;

    if (cycles < trace_start) {



    } else if (cycles >= trace_stop) {


        if (logfile) {

            pclose(logfile);



            logfile = ((void*)0);
        }

    } else {

        if (!logfile) {

            logfile = popen("gzip -3 >q68.log.gz", "w");



            if (UNLIKELY(!logfile)) {
                perror("Failed to open trace logfile");
                return;
            }
            setvbuf(logfile, ((void*)0), _IOFBF, 65536);
        }

        int nwords = 1, i;
        const char *disassembled = q68_disassemble(state, state->PC, &nwords);
        char hexbuf[100];
        int hexlen = 0;

        if (nwords > 3) {
            nwords = 3;
        }
        for (i = 0; i < nwords && hexlen < sizeof(hexbuf)-5; i++) {
            hexlen += snprintf(hexbuf+hexlen, sizeof(hexbuf)-hexlen,
                               "%s%04X", hexlen==0 ? "" : " ",
                               (int)READU16(state, state->PC+2*i));
        }

        fprintf(logfile, "%06X: %-14s  %-26s  SR=%04X %c%c%c%c%c  [%10llu]\n"
                         "    D: %08X %08X %08X %08X %08X %08X %08X %08X\n"
                         "    A: %08X %08X %08X %08X %08X %08X %08X %08X\n",
                (int)state->PC, hexbuf, disassembled, (int)state->SR,
                state->SR & SR_X ? 'X' : '.', state->SR & SR_N ? 'N' : '.',
                state->SR & SR_Z ? 'Z' : '.', state->SR & SR_V ? 'V' : '.',
                state->SR & SR_C ? 'C' : '.', (unsigned long long)cycles,
                (int)state->D[0], (int)state->D[1], (int)state->D[2],
                (int)state->D[3], (int)state->D[4], (int)state->D[5],
                (int)state->D[6], (int)state->D[7],
                (int)state->A[0], (int)state->A[1], (int)state->A[2],
                (int)state->A[3], (int)state->A[4], (int)state->A[5],
                (int)state->A[6], (int)state->A[7]
            );


    }
}
