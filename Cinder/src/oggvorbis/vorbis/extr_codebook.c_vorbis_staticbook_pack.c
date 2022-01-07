
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dim; int entries; int* lengthlist; int maptype; int q_min; int q_delta; int q_quant; int q_sequencep; int * quantlist; } ;
typedef TYPE_1__ static_codebook ;
typedef int oggpack_buffer ;


 int _book_maptype1_quantvals (TYPE_1__ const*) ;
 int _ilog (long) ;
 int labs (int ) ;
 int oggpack_write (int *,int,int) ;

int vorbis_staticbook_pack(const static_codebook *c,oggpack_buffer *opb){
  long i,j;
  int ordered=0;


  oggpack_write(opb,0x564342,24);
  oggpack_write(opb,c->dim,16);
  oggpack_write(opb,c->entries,24);




  for(i=1;i<c->entries;i++)
    if(c->lengthlist[i-1]==0 || c->lengthlist[i]<c->lengthlist[i-1])break;
  if(i==c->entries)ordered=1;

  if(ordered){




    long count=0;
    oggpack_write(opb,1,1);
    oggpack_write(opb,c->lengthlist[0]-1,5);

    for(i=1;i<c->entries;i++){
      char this=c->lengthlist[i];
      char last=c->lengthlist[i-1];
      if(this>last){
        for(j=last;j<this;j++){
          oggpack_write(opb,i-count,_ilog(c->entries-count));
          count=i;
        }
      }
    }
    oggpack_write(opb,i-count,_ilog(c->entries-count));

  }else{


    oggpack_write(opb,0,1);




    for(i=0;i<c->entries;i++)
      if(c->lengthlist[i]==0)break;

    if(i==c->entries){
      oggpack_write(opb,0,1);
      for(i=0;i<c->entries;i++)
        oggpack_write(opb,c->lengthlist[i]-1,5);
    }else{
      oggpack_write(opb,1,1);
      for(i=0;i<c->entries;i++){
        if(c->lengthlist[i]==0){
          oggpack_write(opb,0,1);
        }else{
          oggpack_write(opb,1,1);
          oggpack_write(opb,c->lengthlist[i]-1,5);
        }
      }
    }
  }



  oggpack_write(opb,c->maptype,4);
  switch(c->maptype){
  case 0:

    break;
  case 1:case 2:



    if(!c->quantlist){

      return(-1);
    }


    oggpack_write(opb,c->q_min,32);
    oggpack_write(opb,c->q_delta,32);
    oggpack_write(opb,c->q_quant-1,4);
    oggpack_write(opb,c->q_sequencep,1);

    {
      int quantvals;
      switch(c->maptype){
      case 1:


        quantvals=_book_maptype1_quantvals(c);
        break;
      case 2:

        quantvals=c->entries*c->dim;
        break;
      default:
        quantvals=-1;
      }


      for(i=0;i<quantvals;i++)
        oggpack_write(opb,labs(c->quantlist[i]),c->q_quant);

    }
    break;
  default:

    return(-1);
  }

  return(0);
}
