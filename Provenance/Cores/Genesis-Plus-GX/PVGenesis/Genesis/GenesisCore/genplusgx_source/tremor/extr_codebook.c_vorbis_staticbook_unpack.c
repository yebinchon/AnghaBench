
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dim; int entries; long* lengthlist; int maptype; int q_min; int q_delta; int q_quant; int q_sequencep; long* quantlist; } ;
typedef TYPE_1__ static_codebook ;
typedef int oggpack_buffer ;


 int _book_maptype1_quantvals (TYPE_1__*) ;
 int _ilog (long) ;
 scalar_t__ _ogg_malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int oggpack_read (int *,int) ;
 int vorbis_staticbook_clear (TYPE_1__*) ;

int vorbis_staticbook_unpack(oggpack_buffer *opb,static_codebook *s){
  long i,j;
  memset(s,0,sizeof(*s));


  if(oggpack_read(opb,24)!=0x564342)goto _eofout;


  s->dim=oggpack_read(opb,16);
  s->entries=oggpack_read(opb,24);
  if(s->entries==-1)goto _eofout;


  switch((int)oggpack_read(opb,1)){
  case 0:

    s->lengthlist=(long *)_ogg_malloc(sizeof(*s->lengthlist)*s->entries);


    if(oggpack_read(opb,1)){


      for(i=0;i<s->entries;i++){
 if(oggpack_read(opb,1)){
   long num=oggpack_read(opb,5);
   if(num==-1)goto _eofout;
   s->lengthlist[i]=num+1;
 }else
   s->lengthlist[i]=0;
      }
    }else{

      for(i=0;i<s->entries;i++){
 long num=oggpack_read(opb,5);
 if(num==-1)goto _eofout;
 s->lengthlist[i]=num+1;
      }
    }

    break;
  case 1:

    {
      long length=oggpack_read(opb,5)+1;
      s->lengthlist=(long *)_ogg_malloc(sizeof(*s->lengthlist)*s->entries);

      for(i=0;i<s->entries;){
 long num=oggpack_read(opb,_ilog(s->entries-i));
 if(num==-1)goto _eofout;
 for(j=0;j<num && i<s->entries;j++,i++)
   s->lengthlist[i]=length;
 length++;
      }
    }
    break;
  default:

    return(-1);
  }


  switch((s->maptype=oggpack_read(opb,4))){
  case 0:

    break;
  case 1: case 2:



    s->q_min=oggpack_read(opb,32);
    s->q_delta=oggpack_read(opb,32);
    s->q_quant=oggpack_read(opb,4)+1;
    s->q_sequencep=oggpack_read(opb,1);

    {
      int quantvals=0;
      switch(s->maptype){
      case 1:
 quantvals=_book_maptype1_quantvals(s);
 break;
      case 2:
 quantvals=s->entries*s->dim;
 break;
      }


      s->quantlist=(long *)_ogg_malloc(sizeof(*s->quantlist)*quantvals);
      for(i=0;i<quantvals;i++)
 s->quantlist[i]=oggpack_read(opb,s->q_quant);

      if(quantvals&&s->quantlist[quantvals-1]==-1)goto _eofout;
    }
    break;
  default:
    goto _errout;
  }


  return(0);

 _errout:
 _eofout:
  vorbis_staticbook_clear(s);
  return(-1);
}
