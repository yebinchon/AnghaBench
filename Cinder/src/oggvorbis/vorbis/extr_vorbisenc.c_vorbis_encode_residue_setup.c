
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_21__ {double grouping; int res_type; int limit_type; TYPE_4__* books_base; scalar_t__ book_aux; TYPE_3__* books_base_managed; scalar_t__ book_aux_managed; int res; } ;
typedef TYPE_5__ vorbis_residue_template ;
struct TYPE_22__ {double grouping; int partitions; int* secondstages; size_t groupbook; int* booklist; int end; } ;
typedef TYPE_6__ vorbis_info_residue0 ;
struct TYPE_23__ {int submaps; int* residuesubmap; int* chmuxlist; } ;
typedef TYPE_7__ vorbis_info_mapping0 ;
struct TYPE_24__ {double n; } ;
typedef TYPE_8__ vorbis_info_floor1 ;
struct TYPE_25__ {int rate; int channels; TYPE_10__* codec_setup; } ;
typedef TYPE_9__ vorbis_info ;
typedef int static_codebook ;
struct TYPE_17__ {int* coupling_pkHz; } ;
struct TYPE_18__ {int lowpass_kHz; scalar_t__ managed; } ;
struct TYPE_16__ {int residues; int* residue_type; int* blocksizes; int maps; scalar_t__* map_param; TYPE_1__ psy_g_param; TYPE_2__ hi; TYPE_8__** floor_param; int ** book_param; TYPE_6__** residue_param; } ;
typedef TYPE_10__ codec_setup_info ;
struct TYPE_20__ {scalar_t__** books; } ;
struct TYPE_19__ {scalar_t__** books; } ;


 int PACKETBLOBS ;
 TYPE_6__* _ogg_malloc (int) ;
 void* book_dup_or_new (TYPE_10__*,scalar_t__) ;
 int memcpy (TYPE_6__*,int ,int) ;

__attribute__((used)) static void vorbis_encode_residue_setup(vorbis_info *vi,
                                        int number, int block,
                                        const vorbis_residue_template *res){

  codec_setup_info *ci=vi->codec_setup;
  int i;

  vorbis_info_residue0 *r=ci->residue_param[number]=
    _ogg_malloc(sizeof(*r));

  memcpy(r,res->res,sizeof(*r));
  if(ci->residues<=number)ci->residues=number+1;

  r->grouping=res->grouping;
  ci->residue_type[number]=res->res_type;


  {
    int booklist=0,k;

    if(ci->hi.managed){
      for(i=0;i<r->partitions;i++)
        for(k=0;k<4;k++)
          if(res->books_base_managed->books[i][k])
            r->secondstages[i]|=(1<<k);

      r->groupbook=book_dup_or_new(ci,res->book_aux_managed);
      ci->book_param[r->groupbook]=(static_codebook *)res->book_aux_managed;

      for(i=0;i<r->partitions;i++){
        for(k=0;k<4;k++){
          if(res->books_base_managed->books[i][k]){
            int bookid=book_dup_or_new(ci,res->books_base_managed->books[i][k]);
            r->booklist[booklist++]=bookid;
            ci->book_param[bookid]=(static_codebook *)res->books_base_managed->books[i][k];
          }
        }
      }

    }else{

      for(i=0;i<r->partitions;i++)
        for(k=0;k<4;k++)
          if(res->books_base->books[i][k])
            r->secondstages[i]|=(1<<k);

      r->groupbook=book_dup_or_new(ci,res->book_aux);
      ci->book_param[r->groupbook]=(static_codebook *)res->book_aux;

      for(i=0;i<r->partitions;i++){
        for(k=0;k<4;k++){
          if(res->books_base->books[i][k]){
            int bookid=book_dup_or_new(ci,res->books_base->books[i][k]);
            r->booklist[booklist++]=bookid;
            ci->book_param[bookid]=(static_codebook *)res->books_base->books[i][k];
          }
        }
      }
    }
  }


  {
    double freq=ci->hi.lowpass_kHz*1000.;
    vorbis_info_floor1 *f=ci->floor_param[block];
    double nyq=vi->rate/2.;
    long blocksize=ci->blocksizes[block]>>1;


    if(freq>nyq)freq=nyq;



    f->n=freq/nyq*blocksize;



    switch(res->limit_type){
    case 1:
      if(ci->hi.managed)
        freq=ci->psy_g_param.coupling_pkHz[PACKETBLOBS-1]*1000.;
      else
        freq=ci->psy_g_param.coupling_pkHz[PACKETBLOBS/2]*1000.;
      if(freq>nyq)freq=nyq;
      break;
    case 2:
      freq=250;
      break;
    default:

      break;
    }





    if(ci->residue_type[number]==2){





      int j,k,ch=0;
      for(i=0;i<ci->maps&&ch==0;i++){
        vorbis_info_mapping0 *mi=(vorbis_info_mapping0 *)ci->map_param[i];
        for(j=0;j<mi->submaps && ch==0;j++)
          if(mi->residuesubmap[j]==number)
            for(k=0;k<vi->channels;k++)
              if(mi->chmuxlist[k]==j)
                ch++;
      }

      r->end=(int)((freq/nyq*blocksize*ch)/r->grouping+.9)*
        r->grouping;

      if(r->end>blocksize*ch)r->end=blocksize*ch/r->grouping*r->grouping;

    }else{

      r->end=(int)((freq/nyq*blocksize)/r->grouping+.9)*
        r->grouping;

      if(r->end>blocksize)r->end=blocksize/r->grouping*r->grouping;

    }

    if(r->end==0)r->end=r->grouping;

  }
}
