
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long* codelist; scalar_t__ c; } ;
typedef TYPE_1__ codebook ;



long vorbis_book_codeword(codebook *book,int entry){
  if(book->c)

    return book->codelist[entry];
  return -1;
}
