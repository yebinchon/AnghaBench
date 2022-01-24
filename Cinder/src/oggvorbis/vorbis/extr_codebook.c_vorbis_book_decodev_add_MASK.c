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
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 

long FUNC1(codebook *book,float *a,oggpack_buffer *b,int n){
  if(book->used_entries>0){
    int i,j,entry;
    float *t;

    if(book->dim>8){
      for(i=0;i<n;){
        entry = FUNC0(book,b);
        if(entry==-1)return(-1);
        t     = book->valuelist+entry*book->dim;
        for (j=0;j<book->dim;)
          a[i++]+=t[j++];
      }
    }else{
      for(i=0;i<n;){
        entry = FUNC0(book,b);
        if(entry==-1)return(-1);
        t     = book->valuelist+entry*book->dim;
        j=0;
        switch((int)book->dim){
        case 8:
          a[i++]+=t[j++];
        case 7:
          a[i++]+=t[j++];
        case 6:
          a[i++]+=t[j++];
        case 5:
          a[i++]+=t[j++];
        case 4:
          a[i++]+=t[j++];
        case 3:
          a[i++]+=t[j++];
        case 2:
          a[i++]+=t[j++];
        case 1:
          a[i++]+=t[j++];
        case 0:
          break;
        }
      }
    }
  }
  return(0);
}