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
struct TYPE_4__ {int maptype; int dim; long entries; int /*<<< orphan*/  q_sequencep; int /*<<< orphan*/ * quantlist; int /*<<< orphan*/ * lengthlist; int /*<<< orphan*/  q_delta; int /*<<< orphan*/  q_min; } ;
typedef  TYPE_1__ static_codebook ;
typedef  int ogg_int32_t ;

/* Variables and functions */
 int FUNC0 (int,int,int,int,int*) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (TYPE_1__ const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

ogg_int32_t *FUNC7(const static_codebook *b,int n,int *sparsemap,
			      int *maxpoint){
  long j,k,count=0;
  if(b->maptype==1 || b->maptype==2){
    int quantvals;
    int minpoint,delpoint;
    ogg_int32_t mindel=FUNC3(b->q_min,&minpoint);
    ogg_int32_t delta=FUNC3(b->q_delta,&delpoint);
    ogg_int32_t *r=(ogg_int32_t *)FUNC4(n*b->dim,sizeof(*r));
    int *rp=(int *)FUNC4(n*b->dim,sizeof(*rp));

    *maxpoint=minpoint;

    /* maptype 1 and 2 both use a quantized value vector, but
       different sizes */
    switch(b->maptype){
    case 1:
      /* most of the time, entries%dimensions == 0, but we need to be
	 well defined.  We define that the possible vales at each
	 scalar is values == entries/dim.  If entries%dim != 0, we'll
	 have 'too few' values (values*dim<entries), which means that
	 we'll have 'left over' entries; left over entries use zeroed
	 values (and are wasted).  So don't generate codebooks like
	 that */
      quantvals=FUNC2(b);
      for(j=0;j<b->entries;j++){
	if((sparsemap && b->lengthlist[j]) || !sparsemap){
	  ogg_int32_t last=0;
	  int lastpoint=0;
	  int indexdiv=1;
	  for(k=0;k<b->dim;k++){
	    int index= (j/indexdiv)%quantvals;
	    int point=0;
	    int val=FUNC1(delta,delpoint,
				 FUNC6(b->quantlist[index]),&point);

	    val=FUNC0(mindel,minpoint,val,point,&point);
	    val=FUNC0(last,lastpoint,val,point,&point);
	    
	    if(b->q_sequencep){
	      last=val;	  
	      lastpoint=point;
	    }
	    
	    if(sparsemap){
	      r[sparsemap[count]*b->dim+k]=val;
	      rp[sparsemap[count]*b->dim+k]=point;
	    }else{
	      r[count*b->dim+k]=val;
	      rp[count*b->dim+k]=point;
	    }
	    if(*maxpoint<point)*maxpoint=point;
	    indexdiv*=quantvals;
	  }
	  count++;
	}

      }
      break;
    case 2:
      for(j=0;j<b->entries;j++){
	if((sparsemap && b->lengthlist[j]) || !sparsemap){
	  ogg_int32_t last=0;
	  int         lastpoint=0;

	  for(k=0;k<b->dim;k++){
	    int point=0;
	    int val=FUNC1(delta,delpoint,
				 FUNC6(b->quantlist[j*b->dim+k]),&point);

	    val=FUNC0(mindel,minpoint,val,point,&point);
	    val=FUNC0(last,lastpoint,val,point,&point);
	    
	    if(b->q_sequencep){
	      last=val;	  
	      lastpoint=point;
	    }

	    if(sparsemap){
	      r[sparsemap[count]*b->dim+k]=val;
	      rp[sparsemap[count]*b->dim+k]=point;
	    }else{
	      r[count*b->dim+k]=val;
	      rp[count*b->dim+k]=point;
	    }
	    if(*maxpoint<point)*maxpoint=point;
	  }
	  count++;
	}
      }
      break;
    }

    for(j=0;j<n*b->dim;j++)
      if(rp[j]<*maxpoint)
	r[j]>>=*maxpoint-rp[j];
	    
    FUNC5(rp);
    return(r);
  }
  return(NULL);
}