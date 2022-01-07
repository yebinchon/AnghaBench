
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* vi; } ;
typedef TYPE_1__ vorbis_look_psy ;
struct TYPE_5__ {int normal_start; float normal_thresh; scalar_t__ normal_p; } ;
typedef TYPE_2__ vorbis_info_psy ;


 float** alloca (int) ;
 int apsort ;
 int qsort (float**,int,int,int ) ;
 int rint (int ) ;
 int sqrt (float) ;
 int unitnorm (float) ;

__attribute__((used)) static float noise_normalize(vorbis_look_psy *p, int limit, float *r, float *q, float *f, int *flags, float acc, int i, int n, int *out){

  vorbis_info_psy *vi=p->vi;
  float **sort = alloca(n*sizeof(*sort));
  int j,count=0;
  int start = (vi->normal_p ? vi->normal_start-i : n);
  if(start>n)start=n;


  acc=0.f;



  for(j=0;j<start;j++){
    if(!flags || !flags[j]){


      float ve = q[j]/f[j];
      if(r[j]<0)
        out[j] = -rint(sqrt(ve));
      else
        out[j] = rint(sqrt(ve));
    }
  }


  for(;j<n;j++){
    if(!flags || !flags[j]){


      float ve = q[j]/f[j];





      if(ve<.25f && (!flags || j>=limit-i)){
        acc += ve;
        sort[count++]=q+j;
      }else{

        if(r[j]<0)
          out[j] = -rint(sqrt(ve));
        else
          out[j] = rint(sqrt(ve));
        q[j] = out[j]*out[j]*f[j];
      }
    }


  }

  if(count){

    qsort(sort,count,sizeof(*sort),apsort);
    for(j=0;j<count;j++){
      int k=sort[j]-q;
      if(acc>=vi->normal_thresh){
        out[k]=unitnorm(r[k]);
        acc-=1.f;
        q[k]=f[k];
      }else{
        out[k]=0;
        q[k]=0.f;
      }
    }
  }

  return acc;
}
