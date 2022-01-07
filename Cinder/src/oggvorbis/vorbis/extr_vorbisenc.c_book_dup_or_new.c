
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int static_codebook ;
struct TYPE_3__ {int books; int const** book_param; } ;
typedef TYPE_1__ codec_setup_info ;



__attribute__((used)) static int book_dup_or_new(codec_setup_info *ci,const static_codebook *book){
  int i;
  for(i=0;i<ci->books;i++)
    if(ci->book_param[i]==book)return(i);

  return(ci->books++);
}
