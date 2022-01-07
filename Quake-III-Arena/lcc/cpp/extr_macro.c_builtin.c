
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_6__ {TYPE_2__* tp; } ;
typedef TYPE_1__ Tokenrow ;
struct TYPE_7__ {scalar_t__ type; int wslen; int len; int * t; } ;
typedef TYPE_2__ Token ;
struct TYPE_8__ {int fd; char* filename; int line; struct TYPE_8__* next; } ;
typedef TYPE_3__ Source ;


 int ERROR ;




 scalar_t__ NUMBER ;
 scalar_t__ STRING ;
 TYPE_3__* cursource ;
 int curtime ;
 int error (int ,char*) ;
 char* outnum (char*,int ) ;
 char* outp ;
 int strncpy (char*,int ,int) ;

void
builtin(Tokenrow *trp, int biname)
{
 char *op;
 Token *tp;
 Source *s;

 tp = trp->tp;
 trp->tp++;

 s = cursource;
 while (s && s->fd==-1)
  s = s->next;
 if (s==((void*)0))
  s = cursource;

 tp->type = STRING;
 if (tp->wslen) {
  *outp++ = ' ';
  tp->wslen = 1;
 }
 op = outp;
 *op++ = '"';
 switch (biname) {

 case 129:
  tp->type = NUMBER;
  op = outnum(op-1, s->line);
  break;

 case 130: {
  char *src = s->filename;
  while ((*op++ = *src++) != 0)
   if (src[-1] == '\\')
    *op++ = '\\';
  op--;
  break;
  }

 case 131:
  strncpy(op, curtime+4, 7);
  strncpy(op+7, curtime+20, 4);
  op += 11;
  break;

 case 128:
  strncpy(op, curtime+11, 8);
  op += 8;
  break;

 default:
  error(ERROR, "cpp botch: unknown internal macro");
  return;
 }
 if (tp->type==STRING)
  *op++ = '"';
 tp->t = (uchar*)outp;
 tp->len = op - outp;
 outp = op;
}
