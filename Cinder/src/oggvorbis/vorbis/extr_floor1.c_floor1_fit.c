
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {long n; long posts; long* sorted_index; int* reverse_index; int* loneighbor; int* hineighbor; TYPE_2__* vi; } ;
typedef TYPE_1__ vorbis_look_floor1 ;
struct TYPE_8__ {int* postlist; } ;
typedef TYPE_2__ vorbis_info_floor1 ;
typedef int vorbis_block ;
typedef int lsfit_acc ;


 int VIF_POSIT ;
 int* _vorbis_block_alloc (int *,int) ;
 scalar_t__ accumulate_fit (float const*,float const*,long,long,int *,long,TYPE_2__*) ;
 int exit (int) ;
 int fit_line (int *,int,int*,int*,TYPE_2__*) ;
 scalar_t__ inspect_error (int,int,int,int,float const*,float const*,TYPE_2__*) ;
 int post_Y (int*,int*,long) ;
 int render_point (int,int,int,int,int) ;

int *floor1_fit(vorbis_block *vb,vorbis_look_floor1 *look,
                          const float *logmdct,
                          const float *logmask){
  long i,j;
  vorbis_info_floor1 *info=look->vi;
  long n=look->n;
  long posts=look->posts;
  long nonzero=0;
  lsfit_acc fits[VIF_POSIT+1];
  int fit_valueA[VIF_POSIT+2];
  int fit_valueB[VIF_POSIT+2];

  int loneighbor[VIF_POSIT+2];
  int hineighbor[VIF_POSIT+2];
  int *output=((void*)0);
  int memo[VIF_POSIT+2];

  for(i=0;i<posts;i++)fit_valueA[i]=-200;
  for(i=0;i<posts;i++)fit_valueB[i]=-200;
  for(i=0;i<posts;i++)loneighbor[i]=0;
  for(i=0;i<posts;i++)hineighbor[i]=1;
  for(i=0;i<posts;i++)memo[i]=-1;



  if(posts==0){
    nonzero+=accumulate_fit(logmask,logmdct,0,n,fits,n,info);
  }else{
    for(i=0;i<posts-1;i++)
      nonzero+=accumulate_fit(logmask,logmdct,look->sorted_index[i],
                              look->sorted_index[i+1],fits+i,
                              n,info);
  }

  if(nonzero){

    int y0=-200;
    int y1=-200;
    fit_line(fits,posts-1,&y0,&y1,info);

    fit_valueA[0]=y0;
    fit_valueB[0]=y0;
    fit_valueB[1]=y1;
    fit_valueA[1]=y1;





    for(i=2;i<posts;i++){
      int sortpos=look->reverse_index[i];
      int ln=loneighbor[sortpos];
      int hn=hineighbor[sortpos];


      if(memo[ln]!=hn){

        int lsortpos=look->reverse_index[ln];
        int hsortpos=look->reverse_index[hn];
        memo[ln]=hn;

        {

          int lx=info->postlist[ln];
          int hx=info->postlist[hn];
          int ly=post_Y(fit_valueA,fit_valueB,ln);
          int hy=post_Y(fit_valueA,fit_valueB,hn);

          if(ly==-1 || hy==-1){
            exit(1);
          }

          if(inspect_error(lx,hx,ly,hy,logmask,logmdct,info)){

            int ly0=-200;
            int ly1=-200;
            int hy0=-200;
            int hy1=-200;
            int ret0=fit_line(fits+lsortpos,sortpos-lsortpos,&ly0,&ly1,info);
            int ret1=fit_line(fits+sortpos,hsortpos-sortpos,&hy0,&hy1,info);

            if(ret0){
              ly0=ly;
              ly1=hy0;
            }
            if(ret1){
              hy0=ly1;
              hy1=hy;
            }

            if(ret0 && ret1){
              fit_valueA[i]=-200;
              fit_valueB[i]=-200;
            }else{

              fit_valueB[ln]=ly0;
              if(ln==0)fit_valueA[ln]=ly0;
              fit_valueA[i]=ly1;
              fit_valueB[i]=hy0;
              fit_valueA[hn]=hy1;
              if(hn==1)fit_valueB[hn]=hy1;

              if(ly1>=0 || hy0>=0){

                for(j=sortpos-1;j>=0;j--)
                  if(hineighbor[j]==hn)
                    hineighbor[j]=i;
                  else
                    break;
                for(j=sortpos+1;j<posts;j++)
                  if(loneighbor[j]==ln)
                    loneighbor[j]=i;
                  else
                    break;
              }
            }
          }else{
            fit_valueA[i]=-200;
            fit_valueB[i]=-200;
          }
        }
      }
    }

    output=_vorbis_block_alloc(vb,sizeof(*output)*posts);

    output[0]=post_Y(fit_valueA,fit_valueB,0);
    output[1]=post_Y(fit_valueA,fit_valueB,1);




    for(i=2;i<posts;i++){
      int ln=look->loneighbor[i-2];
      int hn=look->hineighbor[i-2];
      int x0=info->postlist[ln];
      int x1=info->postlist[hn];
      int y0=output[ln];
      int y1=output[hn];

      int predicted=render_point(x0,x1,y0,y1,info->postlist[i]);
      int vx=post_Y(fit_valueA,fit_valueB,i);

      if(vx>=0 && predicted!=vx){
        output[i]=vx;
      }else{
        output[i]= predicted|0x8000;
      }
    }
  }

  return(output);

}
