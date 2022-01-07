
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsprintf {scalar_t__ length; scalar_t__ max; unsigned char* buffer; } ;
typedef int FILE ;



__attribute__((used)) static int addbyter(int output, FILE *data)
{
  struct nsprintf *infop = (struct nsprintf *)data;
  unsigned char outc = (unsigned char)output;

  if(infop->length < infop->max) {

    infop->buffer[0] = outc;
    infop->buffer++;
    infop->length++;
    return outc;
  }
  return -1;
}
