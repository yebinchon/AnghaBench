
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tftphdr {char* th_data; } ;
struct testcase {int ofile; int testno; } ;
struct TYPE_2__ {struct tftphdr hdr; } ;
struct bf {int counter; TYPE_1__ buf; } ;
typedef int ssize_t ;
typedef int outfile ;


 int BF_FREE ;
 int O_BINARY ;
 int O_CREAT ;
 int O_RDWR ;
 int SEEK_CUR ;
 struct bf* bfs ;
 int logmsg (char*,char*) ;
 int lseek (int,int,int ) ;
 int msnprintf (char*,int,char*,int ) ;
 size_t nextone ;
 void* open (char*,int,int) ;
 char prevchar ;
 int write (int,...) ;

__attribute__((used)) static ssize_t write_behind(struct testcase *test, int convert)
{
  char *writebuf;
  int count;
  int ct;
  char *p;
  int c;
  struct bf *b;
  struct tftphdr *dp;

  b = &bfs[nextone];
  if(b->counter < -1)
    return 0;

  if(!test->ofile) {
    char outfile[256];
    msnprintf(outfile, sizeof(outfile), "log/upload.%ld", test->testno);



    test->ofile = open(outfile, O_CREAT|O_RDWR, 0777);

    if(test->ofile == -1) {
      logmsg("Couldn't create and/or open file %s for upload!", outfile);
      return -1;
    }
  }

  count = b->counter;
  b->counter = BF_FREE;
  dp = &b->buf.hdr;
  nextone = !nextone;
  writebuf = dp->th_data;

  if(count <= 0)
    return -1;

  if(convert == 0)
    return write(test->ofile, writebuf, count);

  p = writebuf;
  ct = count;
  while(ct--) {
    c = *p++;
    if(prevchar == '\r') {
      if(c == '\n')
        lseek(test->ofile, -1, SEEK_CUR);
      else
        if(c == '\0')
          goto skipit;

    }


    if(1 != write(test->ofile, &c, 1))
      break;
    skipit:
    prevchar = c;
  }
  return count;
}
