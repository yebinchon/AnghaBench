#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int partitions; int* partitionclass; int* class_subs; scalar_t__* class_book; int** class_subbook; int* postlist; scalar_t__* class_dim; scalar_t__ mult; } ;
typedef  TYPE_1__ vorbis_info_floor1 ;
typedef  TYPE_1__ vorbis_info_floor ;
struct TYPE_10__ {TYPE_4__* codec_setup; } ;
typedef  TYPE_3__ vorbis_info ;
typedef  int /*<<< orphan*/  oggpack_buffer ;
struct TYPE_11__ {scalar_t__ books; } ;
typedef  TYPE_4__ codec_setup_info ;

/* Variables and functions */
 int VIF_POSIT ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  icomp ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int**,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static vorbis_info_floor *FUNC4 (vorbis_info *vi,oggpack_buffer *opb){
  codec_setup_info     *ci=vi->codec_setup;
  int j,k,count=0,maxclass=-1,rangebits;

  vorbis_info_floor1 *info=FUNC0(1,sizeof(*info));
  /* read partitions */
  info->partitions=FUNC2(opb,5); /* only 0 to 31 legal */
  for(j=0;j<info->partitions;j++){
    info->partitionclass[j]=FUNC2(opb,4); /* only 0 to 15 legal */
    if(info->partitionclass[j]<0)goto err_out;
    if(maxclass<info->partitionclass[j])maxclass=info->partitionclass[j];
  }

  /* read partition classes */
  for(j=0;j<maxclass+1;j++){
    info->class_dim[j]=FUNC2(opb,3)+1; /* 1 to 8 */
    info->class_subs[j]=FUNC2(opb,2); /* 0,1,2,3 bits */
    if(info->class_subs[j]<0)
      goto err_out;
    if(info->class_subs[j])info->class_book[j]=FUNC2(opb,8);
    if(info->class_book[j]<0 || info->class_book[j]>=ci->books)
      goto err_out;
    for(k=0;k<(1<<info->class_subs[j]);k++){
      info->class_subbook[j][k]=FUNC2(opb,8)-1;
      if(info->class_subbook[j][k]<-1 || info->class_subbook[j][k]>=ci->books)
        goto err_out;
    }
  }

  /* read the post list */
  info->mult=FUNC2(opb,2)+1;     /* only 1,2,3,4 legal now */
  rangebits=FUNC2(opb,4);
  if(rangebits<0)goto err_out;

  for(j=0,k=0;j<info->partitions;j++){
    count+=info->class_dim[info->partitionclass[j]];
    if(count>VIF_POSIT) goto err_out;
    for(;k<count;k++){
      int t=info->postlist[k+2]=FUNC2(opb,rangebits);
      if(t<0 || t>=(1<<rangebits))
        goto err_out;
    }
  }
  info->postlist[0]=0;
  info->postlist[1]=1<<rangebits;

  /* don't allow repeated values in post list as they'd result in
     zero-length segments */
  {
    int *sortpointer[VIF_POSIT+2];
    for(j=0;j<count+2;j++)sortpointer[j]=info->postlist+j;
    FUNC3(sortpointer,count+2,sizeof(*sortpointer),icomp);

    for(j=1;j<count+2;j++)
      if(*sortpointer[j-1]==*sortpointer[j])goto err_out;
  }

  return(info);

 err_out:
  FUNC1(info);
  return(NULL);
}