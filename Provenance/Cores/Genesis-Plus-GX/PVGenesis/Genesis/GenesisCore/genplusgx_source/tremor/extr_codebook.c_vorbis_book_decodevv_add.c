
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int oggpack_buffer ;
typedef int ogg_int32_t ;
struct TYPE_4__ {scalar_t__ used_entries; int binarypoint; int* valuelist; long dim; } ;
typedef TYPE_1__ codebook ;


 long decode_packed_entry_number (TYPE_1__*,int *) ;

long vorbis_book_decodevv_add(codebook *book,ogg_int32_t **a, long offset,int ch,

         oggpack_buffer *b,int n,int point){
  if(book->used_entries>0){
    long i,j,entry;
    int chptr=0;
    int shift=point-book->binarypoint;

    if(shift>=0){

      for(i=offset;i<offset+n;){
 entry = decode_packed_entry_number(book,b);
 if(entry==-1)return(-1);
 {
   const ogg_int32_t *t = book->valuelist+entry*book->dim;
   for (j=0;j<book->dim;j++){
     a[chptr++][i]+=t[j]>>shift;
     if(chptr==ch){
       chptr=0;
       i++;
     }
   }
 }
      }
    }else{

      for(i=offset;i<offset+n;){
 entry = decode_packed_entry_number(book,b);
 if(entry==-1)return(-1);
 {
   const ogg_int32_t *t = book->valuelist+entry*book->dim;
   for (j=0;j<book->dim;j++){
     a[chptr++][i]+=t[j]<<-shift;
     if(chptr==ch){
       chptr=0;
       i++;
     }
   }
 }
      }
    }
  }
  return(0);
}
