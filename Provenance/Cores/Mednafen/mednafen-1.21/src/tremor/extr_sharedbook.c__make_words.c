
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long ogg_uint32_t ;
typedef int marker ;


 int _ogg_free (long*) ;
 scalar_t__ _ogg_malloc (long) ;
 int memset (long*,int ,int) ;

ogg_uint32_t *_make_words(long *l,long n,long sparsecount){
  long i,j,count=0;
  ogg_uint32_t marker[33];
  ogg_uint32_t *r=(ogg_uint32_t *)_ogg_malloc((sparsecount?sparsecount:n)*sizeof(*r));
  memset(marker,0,sizeof(marker));

  for(i=0;i<n;i++){
    long length=l[i];
    if(length>0){
      ogg_uint32_t entry=marker[length];







      if(length<32 && (entry>>length)){

 _ogg_free(r);
 return(((void*)0));
      }
      r[count++]=entry;



      {
 for(j=length;j>0;j--){

   if(marker[j]&1){

     if(j==1)
       marker[1]++;
     else
       marker[j]=marker[j-1]<<1;
     break;

   }
   marker[j]++;
 }
      }




      for(j=length+1;j<33;j++)
 if((marker[j]>>1) == entry){
   entry=marker[j];
   marker[j]=marker[j-1]<<1;
 }else
   break;
    }else
      if(sparsecount==0)count++;
  }






  if(sparsecount != 1){
    for(i=1;i<33;i++)
      if(marker[i] & (0xffffffffUL>>(32-i))){
       _ogg_free(r);
       return(((void*)0));
      }
  }



  for(i=0,count=0;i<n;i++){
    ogg_uint32_t temp=0;
    for(j=0;j<l[i];j++){
      temp<<=1;
      temp|=(r[count]>>j)&1;
    }

    if(sparsecount){
      if(l[i])
 r[count++]=temp;
    }else
      r[count++]=temp;
  }

  return(r);
}
