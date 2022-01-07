
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* c; } ;
typedef TYPE_2__ codebook ;
struct TYPE_4__ {long* lengthlist; } ;



long vorbis_book_codelen(codebook *book,int entry){
  if(book->c)

    return book->c->lengthlist[entry];
  return -1;
}
