
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double EPSILON ;
 double* alloca (int) ;
 int fabs (double) ;
 double sqrt (double) ;

__attribute__((used)) static int Laguerre_With_Deflation(float *a,int ord,float *r){
  int i,m;
  double lastdelta=0.f;
  double *defl=alloca(sizeof(*defl)*(ord+1));
  for(i=0;i<=ord;i++)defl[i]=a[i];

  for(m=ord;m>0;m--){
    double new=0.f,delta;


    while(1){
      double p=defl[m],pp=0.f,ppp=0.f,denom;


      for(i=m;i>0;i--){
        ppp = new*ppp + pp;
        pp = new*pp + p;
        p = new*p + defl[i-1];
      }


      denom=(m-1) * ((m-1)*pp*pp - m*p*ppp);
      if(denom<0)
        return(-1);

      if(pp>0){
        denom = pp + sqrt(denom);
        if(denom<EPSILON)denom=EPSILON;
      }else{
        denom = pp - sqrt(denom);
        if(denom>-(EPSILON))denom=-(EPSILON);
      }

      delta = m*p/denom;
      new -= delta;

      if(delta<0.f)delta*=-1;

      if(fabs(delta/new)<10e-12)break;
      lastdelta=delta;
    }

    r[m-1]=new;



    for(i=m;i>0;i--)
      defl[i-1]+=new*defl[i];
    defl++;

  }
  return(0);
}
