#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dim; int entries; long* lengthlist; int maptype; int q_min; int q_delta; int q_quant; int q_sequencep; long* quantlist; } ;
typedef  TYPE_1__ static_codebook ;
typedef  int /*<<< orphan*/  oggpack_buffer ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (long) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(oggpack_buffer *opb,static_codebook *s){
  long i,j;
  FUNC3(s,0,sizeof(*s));

  /* make sure alignment is correct */
  if(FUNC4(opb,24)!=0x564342)goto _eofout;

  /* first the basic parameters */
  s->dim=FUNC4(opb,16);
  s->entries=FUNC4(opb,24);
  if(s->entries==-1)goto _eofout;

  /* codeword ordering.... length ordered or unordered? */
  switch((int)FUNC4(opb,1)){
  case 0:
    /* unordered */
    s->lengthlist=(long *)FUNC2(sizeof(*s->lengthlist)*s->entries);

    /* allocated but unused entries? */
    if(FUNC4(opb,1)){
      /* yes, unused entries */

      for(i=0;i<s->entries;i++){
	if(FUNC4(opb,1)){
	  long num=FUNC4(opb,5);
	  if(num==-1)goto _eofout;
	  s->lengthlist[i]=num+1;
	}else
	  s->lengthlist[i]=0;
      }
    }else{
      /* all entries used; no tagging */
      for(i=0;i<s->entries;i++){
	long num=FUNC4(opb,5);
	if(num==-1)goto _eofout;
	s->lengthlist[i]=num+1;
      }
    }
    
    break;
  case 1:
    /* ordered */
    {
      long length=FUNC4(opb,5)+1;
      s->lengthlist=(long *)FUNC2(sizeof(*s->lengthlist)*s->entries);

      for(i=0;i<s->entries;){
	long num=FUNC4(opb,FUNC1(s->entries-i));
	if(num==-1)goto _eofout;
	for(j=0;j<num && i<s->entries;j++,i++)
	  s->lengthlist[i]=length;
	length++;
      }
    }
    break;
  default:
    /* EOF */
    return(-1);
  }
  
  /* Do we have a mapping to unpack? */
  switch((s->maptype=FUNC4(opb,4))){
  case 0:
    /* no mapping */
    break;
  case 1: case 2:
    /* implicitly populated value mapping */
    /* explicitly populated value mapping */

    s->q_min=FUNC4(opb,32);
    s->q_delta=FUNC4(opb,32);
    s->q_quant=FUNC4(opb,4)+1;
    s->q_sequencep=FUNC4(opb,1);

    {
      int quantvals=0;
      switch(s->maptype){
      case 1:
	quantvals=FUNC0(s);
	break;
      case 2:
	quantvals=s->entries*s->dim;
	break;
      }
      
      /* quantized values */
      s->quantlist=(long *)FUNC2(sizeof(*s->quantlist)*quantvals);
      for(i=0;i<quantvals;i++)
	s->quantlist[i]=FUNC4(opb,s->q_quant);
      
      if(quantvals&&s->quantlist[quantvals-1]==-1)goto _eofout;
    }
    break;
  default:
    goto _errout;
  }

  /* all set */
  return(0);
  
 _errout:
 _eofout:
  FUNC5(s);
  return(-1); 
}