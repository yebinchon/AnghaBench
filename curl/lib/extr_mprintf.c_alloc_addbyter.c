
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asprintf {char* buffer; int fail; int alloc; int len; } ;
typedef int FILE ;


 char* malloc (int) ;
 char* realloc (char*,size_t) ;

__attribute__((used)) static int alloc_addbyter(int output, FILE *data)
{
  struct asprintf *infop = (struct asprintf *)data;
  unsigned char outc = (unsigned char)output;

  if(!infop->buffer) {
    infop->buffer = malloc(32);
    if(!infop->buffer) {
      infop->fail = 1;
      return -1;
    }
    infop->alloc = 32;
    infop->len = 0;
  }
  else if(infop->len + 1 >= infop->alloc) {
    char *newptr = ((void*)0);
    size_t newsize = infop->alloc*2;


    if(newsize > infop->alloc)
      newptr = realloc(infop->buffer, newsize);

    if(!newptr) {
      infop->fail = 1;
      return -1;
    }
    infop->buffer = newptr;
    infop->alloc = newsize;
  }

  infop->buffer[ infop->len ] = outc;

  infop->len++;

  return outc;
}
