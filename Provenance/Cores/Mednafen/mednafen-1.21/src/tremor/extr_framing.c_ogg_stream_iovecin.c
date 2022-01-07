
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int* lacing_vals; int lacing_fill; int e_o_s; int packetno; int * granule_vals; int granulepos; scalar_t__ body_fill; scalar_t__ body_data; scalar_t__ body_returned; } ;
typedef TYPE_1__ ogg_stream_state ;
struct TYPE_9__ {long iov_len; int iov_base; } ;
typedef TYPE_2__ ogg_iovec_t ;
typedef int ogg_int64_t ;


 long LONG_MAX ;
 scalar_t__ _os_body_expand (TYPE_1__*,long) ;
 scalar_t__ _os_lacing_expand (TYPE_1__*,long) ;
 int memcpy (scalar_t__,int ,long) ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ ogg_stream_check (TYPE_1__*) ;

int ogg_stream_iovecin(ogg_stream_state *os, ogg_iovec_t *iov, int count,
                       long e_o_s, ogg_int64_t granulepos){

  long bytes = 0, lacing_vals;
  int i;

  if(ogg_stream_check(os)) return -1;
  if(!iov) return 0;

  for (i = 0; i < count; ++i){
    if(iov[i].iov_len>LONG_MAX) return -1;
    if(bytes>LONG_MAX-(long)iov[i].iov_len) return -1;
    bytes += (long)iov[i].iov_len;
  }
  lacing_vals=bytes/255+1;

  if(os->body_returned){




    os->body_fill-=os->body_returned;
    if(os->body_fill)
      memmove(os->body_data,os->body_data+os->body_returned,
              os->body_fill);
    os->body_returned=0;
  }


  if(_os_body_expand(os,bytes) || _os_lacing_expand(os,lacing_vals))
    return -1;






  for (i = 0; i < count; ++i) {
    memcpy(os->body_data+os->body_fill, iov[i].iov_base, iov[i].iov_len);
    os->body_fill += (int)iov[i].iov_len;
  }


  for(i=0;i<lacing_vals-1;i++){
    os->lacing_vals[os->lacing_fill+i]=255;
    os->granule_vals[os->lacing_fill+i]=os->granulepos;
  }
  os->lacing_vals[os->lacing_fill+i]=bytes%255;
  os->granulepos=os->granule_vals[os->lacing_fill+i]=granulepos;


  os->lacing_vals[os->lacing_fill]|= 0x100;

  os->lacing_fill+=lacing_vals;


  os->packetno++;

  if(e_o_s)os->e_o_s=1;

  return(0);
}
