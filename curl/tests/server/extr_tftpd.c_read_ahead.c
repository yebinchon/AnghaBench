
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tftphdr {char* th_data; } ;
struct testcase {int* rptr; scalar_t__ rcount; } ;
struct TYPE_2__ {struct tftphdr hdr; } ;
struct bf {int counter; TYPE_1__ buf; } ;


 int BF_FREE ;
 size_t MIN (int,scalar_t__) ;
 int SEGSIZE ;
 struct bf* bfs ;
 int memcpy (char*,int*,size_t) ;
 int newline ;
 size_t nextone ;
 char prevchar ;

__attribute__((used)) static void read_ahead(struct testcase *test,
                       int convert )
{
  int i;
  char *p;
  int c;
  struct bf *b;
  struct tftphdr *dp;

  b = &bfs[nextone];
  if(b->counter != BF_FREE)
    return;
  nextone = !nextone;

  dp = &b->buf.hdr;

  if(convert == 0) {


    size_t copy_n = MIN(SEGSIZE, test->rcount);
    memcpy(dp->th_data, test->rptr, copy_n);


    test->rcount -= copy_n;
    test->rptr += copy_n;
    b->counter = (int)copy_n;
    return;
  }

  p = dp->th_data;
  for(i = 0 ; i < SEGSIZE; i++) {
    if(newline) {
      if(prevchar == '\n')
        c = '\n';
      else
        c = '\0';
      newline = 0;
    }
    else {
      if(test->rcount) {
        c = test->rptr[0];
        test->rptr++;
        test->rcount--;
      }
      else
        break;
      if(c == '\n' || c == '\r') {
        prevchar = c;
        c = '\r';
        newline = 1;
      }
    }
    *p++ = (char)c;
  }
  b->counter = (int)(p - dp->th_data);
}
