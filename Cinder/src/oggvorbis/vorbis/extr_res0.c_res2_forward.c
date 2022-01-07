
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vorbis_look_residue ;
struct TYPE_4__ {int pcmend; } ;
typedef TYPE_1__ vorbis_block ;
typedef int oggpack_buffer ;


 int _01forward (int *,int *,int**,int,long**,int ,...) ;
 int _encodepart ;
 int* _vorbis_block_alloc (TYPE_1__*,int) ;

int res2_forward(oggpack_buffer *opb,
                 vorbis_block *vb,vorbis_look_residue *vl,
                 int **in,int *nonzero,int ch, long **partword,int submap){
  long i,j,k,n=vb->pcmend/2,used=0;




  int *work=_vorbis_block_alloc(vb,ch*n*sizeof(*work));
  for(i=0;i<ch;i++){
    int *pcm=in[i];
    if(nonzero[i])used++;
    for(j=0,k=i;j<n;j++,k+=ch)
      work[k]=pcm[j];
  }

  if(used){



    (void)submap;
    return _01forward(opb,vl,&work,1,partword,_encodepart);

  }else{
    return(0);
  }
}
