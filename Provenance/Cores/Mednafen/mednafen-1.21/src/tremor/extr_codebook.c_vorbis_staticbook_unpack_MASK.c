#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int dim; int entries; long* lengthlist; int maptype; int q_min; int q_delta; int q_quant; int q_sequencep; long* quantlist; } ;
typedef  TYPE_1__ static_codebook ;
struct TYPE_11__ {int storage; } ;
typedef  TYPE_2__ oggpack_buffer ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (long) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

static_codebook *FUNC7(oggpack_buffer *opb){
  long i,j;
  static_codebook *s=FUNC2(1,sizeof(*s));

  /* make sure alignment is correct */
  if(FUNC5(opb,24)!=0x564342)goto _eofout;

  /* first the basic parameters */
  s->dim=FUNC5(opb,16);
  s->entries=FUNC5(opb,24);
  if(s->entries==-1)goto _eofout;

  if(FUNC1(s->dim)+FUNC1(s->entries)>24)goto _eofout;

  /* codeword ordering.... length ordered or unordered? */
  switch((int)FUNC5(opb,1)){
  case 0:{
    long unused;
    /* allocated but unused entries? */
    unused=FUNC5(opb,1);
    if((s->entries*(unused?1:5)+7)>>3>opb->storage-FUNC4(opb))
      goto _eofout;
    /* unordered */
    s->lengthlist=(long *)FUNC3(sizeof(*s->lengthlist)*s->entries);

    /* allocated but unused entries? */
    if(unused){
      /* yes, unused entries */

      for(i=0;i<s->entries;i++){
	if(FUNC5(opb,1)){
	  long num=FUNC5(opb,5);
	  if(num==-1)goto _eofout;
	  s->lengthlist[i]=num+1;
	}else
	  s->lengthlist[i]=0;
      }
    }else{
      /* all entries used; no tagging */
      for(i=0;i<s->entries;i++){
	long num=FUNC5(opb,5);
	if(num==-1)goto _eofout;
	s->lengthlist[i]=num+1;
      }
    }
    
    break;
  }
  case 1:
    /* ordered */
    {
      long length=FUNC5(opb,5)+1;
      if(length==0)goto _eofout;
      s->lengthlist=(long *)FUNC3(sizeof(*s->lengthlist)*s->entries);

      for(i=0;i<s->entries;){
	long num=FUNC5(opb,FUNC1(s->entries-i));
	if(num==-1)goto _eofout;
	if(length>32 || num>s->entries-i ||
	   (num>0 && (num-1)>>(length>>1)>>((length+1)>>1))>0){
	  goto _errout;
	}
	for(j=0;j<num;j++,i++)
	  s->lengthlist[i]=length;
	length++;
      }
    }
    break;
  default:
    /* EOF */
    goto _eofout;
  }
  
  /* Do we have a mapping to unpack? */
  switch((s->maptype=FUNC5(opb,4))){
  case 0:
    /* no mapping */
    break;
  case 1: case 2:
    /* implicitly populated value mapping */
    /* explicitly populated value mapping */

    s->q_min=FUNC5(opb,32);
    s->q_delta=FUNC5(opb,32);
    s->q_quant=FUNC5(opb,4)+1;
    s->q_sequencep=FUNC5(opb,1);
    if(s->q_sequencep==-1)goto _eofout;

    {
      int quantvals=0;
      switch(s->maptype){
      case 1:
	quantvals=(s->dim==0?0:FUNC0(s));
	break;
      case 2:
	quantvals=s->entries*s->dim;
	break;
      }
      
      /* quantized values */
      if((quantvals*s->q_quant+7)>>3>opb->storage-FUNC4(opb))
        goto _eofout;
      s->quantlist=(long *)FUNC3(sizeof(*s->quantlist)*quantvals);
      for(i=0;i<quantvals;i++)
	s->quantlist[i]=FUNC5(opb,s->q_quant);
      
      if(quantvals&&s->quantlist[quantvals-1]==-1)goto _eofout;
    }
    break;
  default:
    goto _errout;
  }

  /* all set */
  return(s);
  
 _errout:
 _eofout:
  FUNC6(s);
  return(NULL); 
}