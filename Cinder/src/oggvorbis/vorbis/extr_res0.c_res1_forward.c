
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vorbis_look_residue ;
typedef int vorbis_block ;
typedef int oggpack_buffer ;


 int _01forward (int *,int *,int**,int,long**,int ,...) ;
 int _encodepart ;

int res1_forward(oggpack_buffer *opb,vorbis_block *vb,vorbis_look_residue *vl,
                 int **in,int *nonzero,int ch, long **partword, int submap){
  int i,used=0;
  (void)vb;
  for(i=0;i<ch;i++)
    if(nonzero[i])
      in[used++]=in[i];

  if(used){



    (void)submap;
    return _01forward(opb,vl,in,used,partword,_encodepart);

  }else{
    return(0);
  }
}
