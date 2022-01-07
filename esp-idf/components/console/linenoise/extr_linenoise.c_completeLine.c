
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct linenoiseState {char* buf; int len; int pos; int buflen; } ;
struct TYPE_4__ {scalar_t__ len; char** cvec; int * member_1; int member_0; } ;
typedef TYPE_1__ linenoiseCompletions ;




 int completionCallback (char*,TYPE_1__*) ;
 int fread (char*,int,int,int ) ;
 int freeCompletions (TYPE_1__*) ;
 int linenoiseBeep () ;
 int refreshLine (struct linenoiseState*) ;
 int snprintf (char*,int ,char*,char*) ;
 int stdin ;
 int strlen (char*) ;

__attribute__((used)) static int completeLine(struct linenoiseState *ls) {
    linenoiseCompletions lc = { 0, ((void*)0) };
    int nread, nwritten;
    char c = 0;

    completionCallback(ls->buf,&lc);
    if (lc.len == 0) {
        linenoiseBeep();
    } else {
        size_t stop = 0, i = 0;

        while(!stop) {

            if (i < lc.len) {
                struct linenoiseState saved = *ls;

                ls->len = ls->pos = strlen(lc.cvec[i]);
                ls->buf = lc.cvec[i];
                refreshLine(ls);
                ls->len = saved.len;
                ls->pos = saved.pos;
                ls->buf = saved.buf;
            } else {
                refreshLine(ls);
            }

            nread = fread(&c, 1, 1, stdin);
            if (nread <= 0) {
                freeCompletions(&lc);
                return -1;
            }

            switch(c) {
                case 128:
                    i = (i+1) % (lc.len+1);
                    if (i == lc.len) linenoiseBeep();
                    break;
                case 129:

                    if (i < lc.len) refreshLine(ls);
                    stop = 1;
                    break;
                default:

                    if (i < lc.len) {
                        nwritten = snprintf(ls->buf,ls->buflen,"%s",lc.cvec[i]);
                        ls->len = ls->pos = nwritten;
                    }
                    stop = 1;
                    break;
            }
        }
    }

    freeCompletions(&lc);
    return c;
}
