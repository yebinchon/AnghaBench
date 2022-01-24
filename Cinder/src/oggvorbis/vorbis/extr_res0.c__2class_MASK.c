#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int train_seq; int /*<<< orphan*/  frames; TYPE_2__* info; } ;
typedef  TYPE_1__ vorbis_look_residue0 ;
typedef  int /*<<< orphan*/  vorbis_look_residue ;
struct TYPE_4__ {int grouping; int partitions; int end; int begin; int* classmetric1; int* classmetric2; } ;
typedef  TYPE_2__ vorbis_info_residue0 ;
typedef  int /*<<< orphan*/  vorbis_block ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static long **FUNC7(vorbis_block *vb,vorbis_look_residue *vl,int **in,
                      int ch){
  long i,j,k,l;
  vorbis_look_residue0 *look=(vorbis_look_residue0 *)vl;
  vorbis_info_residue0 *info=look->info;

  /* move all this setup out later */
  int samples_per_partition=info->grouping;
  int possible_partitions=info->partitions;
  int n=info->end-info->begin;

  int partvals=n/samples_per_partition;
  long **partword=FUNC0(vb,sizeof(*partword));

#if defined(TRAIN_RES) || defined (TRAIN_RESAUX)
  FILE *of;
  char buffer[80];
#endif

  partword[0]=FUNC0(vb,partvals*sizeof(*partword[0]));
  FUNC5(partword[0],0,partvals*sizeof(*partword[0]));

  for(i=0,l=info->begin/ch;i<partvals;i++){
    int magmax=0;
    int angmax=0;
    for(j=0;j<samples_per_partition;j+=ch){
      if(FUNC1(in[0][l])>magmax)magmax=FUNC1(in[0][l]);
      for(k=1;k<ch;k++)
        if(FUNC1(in[k][l])>angmax)angmax=FUNC1(in[k][l]);
      l++;
    }

    for(j=0;j<possible_partitions-1;j++)
      if(magmax<=info->classmetric1[j] &&
         angmax<=info->classmetric2[j])
        break;

    partword[0][i]=j;

  }

#ifdef TRAIN_RESAUX
  sprintf(buffer,"resaux_%d.vqd",look->train_seq);
  of=fopen(buffer,"a");
  for(i=0;i<partvals;i++)
    fprintf(of,"%ld, ",partword[0][i]);
  fprintf(of,"\n");
  fclose(of);
#endif

  look->frames++;

  return(partword);
}