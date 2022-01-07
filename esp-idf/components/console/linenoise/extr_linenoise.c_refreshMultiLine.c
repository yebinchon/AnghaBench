
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linenoiseState {int plen; int len; int cols; int oldpos; int maxrows; char* prompt; char* buf; int pos; } ;
struct abuf {int len; int b; } ;


 int abAppend (struct abuf*,char*,int) ;
 int abFree (struct abuf*) ;
 int abInit (struct abuf*) ;
 int fwrite (int ,int ,int,int ) ;
 int lndebug (char*,...) ;
 int refreshShowHints (struct abuf*,struct linenoiseState*,int) ;
 int snprintf (char*,int,char*,...) ;
 int stdout ;
 int strlen (char*) ;

__attribute__((used)) static void refreshMultiLine(struct linenoiseState *l) {
    char seq[64];
    int plen = l->plen;
    int rows = (plen+l->len+l->cols-1)/l->cols;
    int rpos = (plen+l->oldpos+l->cols)/l->cols;
    int rpos2;
    int col;
    int old_rows = l->maxrows;
    int j;
    struct abuf ab;


    if (rows > (int)l->maxrows) l->maxrows = rows;



    abInit(&ab);
    if (old_rows-rpos > 0) {
        lndebug("go down %d", old_rows-rpos);
        snprintf(seq,64,"\x1b[%dB", old_rows-rpos);
        abAppend(&ab,seq,strlen(seq));
    }


    for (j = 0; j < old_rows-1; j++) {
        lndebug("clear+up");
        snprintf(seq,64,"\r\x1b[0K\x1b[1A");
        abAppend(&ab,seq,strlen(seq));
    }


    lndebug("clear");
    snprintf(seq,64,"\r\x1b[0K");
    abAppend(&ab,seq,strlen(seq));


    abAppend(&ab,l->prompt,strlen(l->prompt));
    abAppend(&ab,l->buf,l->len);


    refreshShowHints(&ab,l,plen);



    if (l->pos &&
        l->pos == l->len &&
        (l->pos+plen) % l->cols == 0)
    {
        lndebug("<newline>");
        abAppend(&ab,"\n",1);
        snprintf(seq,64,"\r");
        abAppend(&ab,seq,strlen(seq));
        rows++;
        if (rows > (int)l->maxrows) l->maxrows = rows;
    }


    rpos2 = (plen+l->pos+l->cols)/l->cols;
    lndebug("rpos2 %d", rpos2);


    if (rows-rpos2 > 0) {
        lndebug("go-up %d", rows-rpos2);
        snprintf(seq,64,"\x1b[%dA", rows-rpos2);
        abAppend(&ab,seq,strlen(seq));
    }


    col = (plen+(int)l->pos) % (int)l->cols;
    lndebug("set col %d", 1+col);
    if (col)
        snprintf(seq,64,"\r\x1b[%dC", col);
    else
        snprintf(seq,64,"\r");
    abAppend(&ab,seq,strlen(seq));

    lndebug("\n");
    l->oldpos = l->pos;

    if (fwrite(ab.b,ab.len,1,stdout) == -1) {}
    abFree(&ab);
}
