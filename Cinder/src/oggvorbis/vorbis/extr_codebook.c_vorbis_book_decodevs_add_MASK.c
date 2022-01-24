#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  oggpack_buffer ;
struct TYPE_4__ {scalar_t__ used_entries; int dim; float* valuelist; } ;
typedef  TYPE_1__ codebook ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 long FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 

long FUNC2(codebook *book,float *a,oggpack_buffer *b,int n){
  if(book->used_entries>0){
    int step=n/book->dim;
    long *entry = FUNC0(sizeof(*entry)*step);
    float **t = FUNC0(sizeof(*t)*step);
    int i,j,o;

    for (i = 0; i < step; i++) {
      entry[i]=FUNC1(book,b);
      if(entry[i]==-1)return(-1);
      t[i] = book->valuelist+entry[i]*book->dim;
    }
    for(i=0,o=0;i<book->dim;i++,o+=step)
      for (j=0;j<step;j++)
        a[o+j]+=t[j][i];
  }
  return(0);
}