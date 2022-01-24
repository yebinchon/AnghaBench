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
struct TYPE_4__ {int dim; int entries; int* lengthlist; int maptype; int q_min; int q_delta; int q_quant; int q_sequencep; int /*<<< orphan*/ * quantlist; } ;
typedef  TYPE_1__ static_codebook ;
typedef  int /*<<< orphan*/  oggpack_buffer ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const*) ; 
 int FUNC1 (long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

int FUNC4(const static_codebook *c,oggpack_buffer *opb){
  long i,j;
  int ordered=0;

  /* first the basic parameters */
  FUNC3(opb,0x564342,24);
  FUNC3(opb,c->dim,16);
  FUNC3(opb,c->entries,24);

  /* pack the codewords.  There are two packings; length ordered and
     length random.  Decide between the two now. */

  for(i=1;i<c->entries;i++)
    if(c->lengthlist[i-1]==0 || c->lengthlist[i]<c->lengthlist[i-1])break;
  if(i==c->entries)ordered=1;

  if(ordered){
    /* length ordered.  We only need to say how many codewords of
       each length.  The actual codewords are generated
       deterministically */

    long count=0;
    FUNC3(opb,1,1);  /* ordered */
    FUNC3(opb,c->lengthlist[0]-1,5); /* 1 to 32 */

    for(i=1;i<c->entries;i++){
      char this=c->lengthlist[i];
      char last=c->lengthlist[i-1];
      if(this>last){
        for(j=last;j<this;j++){
          FUNC3(opb,i-count,FUNC1(c->entries-count));
          count=i;
        }
      }
    }
    FUNC3(opb,i-count,FUNC1(c->entries-count));

  }else{
    /* length random.  Again, we don't code the codeword itself, just
       the length.  This time, though, we have to encode each length */
    FUNC3(opb,0,1);   /* unordered */

    /* algortihmic mapping has use for 'unused entries', which we tag
       here.  The algorithmic mapping happens as usual, but the unused
       entry has no codeword. */
    for(i=0;i<c->entries;i++)
      if(c->lengthlist[i]==0)break;

    if(i==c->entries){
      FUNC3(opb,0,1); /* no unused entries */
      for(i=0;i<c->entries;i++)
        FUNC3(opb,c->lengthlist[i]-1,5);
    }else{
      FUNC3(opb,1,1); /* we have unused entries; thus we tag */
      for(i=0;i<c->entries;i++){
        if(c->lengthlist[i]==0){
          FUNC3(opb,0,1);
        }else{
          FUNC3(opb,1,1);
          FUNC3(opb,c->lengthlist[i]-1,5);
        }
      }
    }
  }

  /* is the entry number the desired return value, or do we have a
     mapping? If we have a mapping, what type? */
  FUNC3(opb,c->maptype,4);
  switch(c->maptype){
  case 0:
    /* no mapping */
    break;
  case 1:case 2:
    /* implicitly populated value mapping */
    /* explicitly populated value mapping */

    if(!c->quantlist){
      /* no quantlist?  error */
      return(-1);
    }

    /* values that define the dequantization */
    FUNC3(opb,c->q_min,32);
    FUNC3(opb,c->q_delta,32);
    FUNC3(opb,c->q_quant-1,4);
    FUNC3(opb,c->q_sequencep,1);

    {
      int quantvals;
      switch(c->maptype){
      case 1:
        /* a single column of (c->entries/c->dim) quantized values for
           building a full value list algorithmically (square lattice) */
        quantvals=FUNC0(c);
        break;
      case 2:
        /* every value (c->entries*c->dim total) specified explicitly */
        quantvals=c->entries*c->dim;
        break;
      default: /* NOT_REACHABLE */
        quantvals=-1;
      }

      /* quantized values */
      for(i=0;i<quantvals;i++)
        FUNC3(opb,FUNC2(c->quantlist[i]),c->q_quant);

    }
    break;
  default:
    /* error case; we don't have any other map types now */
    return(-1);
  }

  return(0);
}