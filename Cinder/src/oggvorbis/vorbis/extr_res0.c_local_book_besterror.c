
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* lengthlist; } ;
typedef TYPE_1__ static_codebook ;
typedef int p ;
struct TYPE_5__ {int dim; int minval; int delta; int quantvals; int entries; TYPE_1__* c; } ;
typedef TYPE_2__ codebook ;


 int memcpy (int*,int*,int) ;

__attribute__((used)) static int local_book_besterror(codebook *book,int *a){
  int dim=book->dim;
  int i,j,o;
  int minval=book->minval;
  int del=book->delta;
  int qv=book->quantvals;
  int ze=(qv>>1);
  int index=0;

  int p[8]={0,0,0,0,0,0,0,0};

  if(del!=1){
    for(i=0,o=dim;i<dim;i++){
      int v = (a[--o]-minval+(del>>1))/del;
      int m = (v<ze ? ((ze-v)<<1)-1 : ((v-ze)<<1));
      index = index*qv+ (m<0?0:(m>=qv?qv-1:m));
      p[o]=v*del+minval;
    }
  }else{
    for(i=0,o=dim;i<dim;i++){
      int v = a[--o]-minval;
      int m = (v<ze ? ((ze-v)<<1)-1 : ((v-ze)<<1));
      index = index*qv+ (m<0?0:(m>=qv?qv-1:m));
      p[o]=v*del+minval;
    }
  }

  if(book->c->lengthlist[index]<=0){
    const static_codebook *c=book->c;
    int best=-1;

    int e[8]={0,0,0,0,0,0,0,0};
    int maxval = book->minval + book->delta*(book->quantvals-1);
    for(i=0;i<book->entries;i++){
      if(c->lengthlist[i]>0){
        int this=0;
        for(j=0;j<dim;j++){
          int val=(e[j]-a[j]);
          this+=val*val;
        }
        if(best==-1 || this<best){
          memcpy(p,e,sizeof(p));
          best=this;
          index=i;
        }
      }

      j=0;
      while(e[j]>=maxval)
        e[j++]=0;
      if(e[j]>=0)
        e[j]+=book->delta;
      e[j]= -e[j];
    }
  }

  if(index>-1){
    for(i=0;i<dim;i++)
      *a++ -= p[i];
  }

  return(index);
}
