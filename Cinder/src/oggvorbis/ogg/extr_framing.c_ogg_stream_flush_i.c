
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lacing_fill; int b_o_s; int* lacing_vals; int* granule_vals; int* header; long serialno; int pageno; int header_fill; scalar_t__ body_returned; scalar_t__ body_data; scalar_t__ e_o_s; } ;
typedef TYPE_1__ ogg_stream_state ;
struct TYPE_8__ {int* header; int header_len; int body_len; scalar_t__ body; } ;
typedef TYPE_2__ ogg_page ;
typedef int ogg_int64_t ;


 int memcpy (int*,char*,int) ;
 int memmove (int*,int*,int) ;
 int ogg_page_checksum_set (TYPE_2__*) ;
 scalar_t__ ogg_stream_check (TYPE_1__*) ;

__attribute__((used)) static int ogg_stream_flush_i(ogg_stream_state *os,ogg_page *og, int force, int nfill){
  int i;
  int vals=0;
  int maxvals=(os->lacing_fill>255?255:os->lacing_fill);
  int bytes=0;
  long acc=0;
  ogg_int64_t granule_pos=-1;

  if(ogg_stream_check(os)) return(0);
  if(maxvals==0) return(0);






  if(os->b_o_s==0){
    granule_pos=0;
    for(vals=0;vals<maxvals;vals++){
      if((os->lacing_vals[vals]&0x0ff)<255){
        vals++;
        break;
      }
    }
  }else{
    int packets_done=0;
    int packet_just_done=0;
    for(vals=0;vals<maxvals;vals++){
      if(acc>nfill && packet_just_done>=4){
        force=1;
        break;
      }
      acc+=os->lacing_vals[vals]&0x0ff;
      if((os->lacing_vals[vals]&0xff)<255){
        granule_pos=os->granule_vals[vals];
        packet_just_done=++packets_done;
      }else
        packet_just_done=0;
    }
    if(vals==255)force=1;
  }

  if(!force) return(0);


  memcpy(os->header,"OggS",4);


  os->header[4]=0x00;


  os->header[5]=0x00;
  if((os->lacing_vals[0]&0x100)==0)os->header[5]|=0x01;

  if(os->b_o_s==0)os->header[5]|=0x02;

  if(os->e_o_s && os->lacing_fill==vals)os->header[5]|=0x04;
  os->b_o_s=1;


  for(i=6;i<14;i++){
    os->header[i]=(unsigned char)(granule_pos&0xff);
    granule_pos>>=8;
  }


  {
    long serialno=os->serialno;
    for(i=14;i<18;i++){
      os->header[i]=(unsigned char)(serialno&0xff);
      serialno>>=8;
    }
  }



  if(os->pageno==-1)os->pageno=0;




  {
    long pageno=os->pageno++;
    for(i=18;i<22;i++){
      os->header[i]=(unsigned char)(pageno&0xff);
      pageno>>=8;
    }
  }


  os->header[22]=0;
  os->header[23]=0;
  os->header[24]=0;
  os->header[25]=0;


  os->header[26]=(unsigned char)(vals&0xff);
  for(i=0;i<vals;i++)
    bytes+=os->header[i+27]=(unsigned char)(os->lacing_vals[i]&0xff);


  og->header=os->header;
  og->header_len=os->header_fill=vals+27;
  og->body=os->body_data+os->body_returned;
  og->body_len=bytes;



  os->lacing_fill-=vals;
  memmove(os->lacing_vals,os->lacing_vals+vals,os->lacing_fill*sizeof(*os->lacing_vals));
  memmove(os->granule_vals,os->granule_vals+vals,os->lacing_fill*sizeof(*os->granule_vals));
  os->body_returned+=bytes;



  ogg_page_checksum_set(og);


  return(1);
}
