
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXBUF ;
 int * digs ;
 void stub1 (int,void*) ;

__attribute__((used)) static int
printnum(
 unsigned long long int u,
 int base,
 void (*putc)(int, void *),
 void *arg)
{
 char buf[MAXBUF];
 char * p = &buf[MAXBUF-1];
 int nprinted = 0;

 do {
     *p-- = digs[u % base];
     u /= base;
 } while (u != 0);

 while (++p != &buf[MAXBUF]) {
     (*putc)(*p, arg);
     nprinted++;
 }

 return nprinted;
}
