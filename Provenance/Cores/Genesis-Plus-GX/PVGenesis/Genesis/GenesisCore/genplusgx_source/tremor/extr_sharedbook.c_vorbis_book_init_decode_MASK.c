#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int entries; scalar_t__* lengthlist; int /*<<< orphan*/  dim; } ;
typedef  TYPE_1__ static_codebook ;
typedef  int ogg_uint32_t ;
struct TYPE_9__ {int entries; int used_entries; int* codelist; int* dec_index; char* dec_codelengths; int dec_firsttablen; int* dec_firsttable; char dec_maxlength; int /*<<< orphan*/  binarypoint; int /*<<< orphan*/  valuelist; int /*<<< orphan*/  dim; } ;
typedef  TYPE_2__ codebook ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int* FUNC2 (scalar_t__*,int,int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 size_t FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sort32a ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

int FUNC11(codebook *c,const static_codebook *s){
  int i,j,n=0,tabn;
  int *sortindex;
  FUNC8(c,0,sizeof(*c));
  
  /* count actually used entries */
  for(i=0;i<s->entries;i++)
    if(s->lengthlist[i]>0)
      n++;

  c->entries=s->entries;
  c->used_entries=n;
  c->dim=s->dim;

  if(n>0){
    /* two different remappings go on here.  
       
       First, we collapse the likely sparse codebook down only to
       actually represented values/words.  This collapsing needs to be
       indexed as map-valueless books are used to encode original entry
       positions as integers.
       
       Second, we reorder all vectors, including the entry index above,
       by sorted bitreversed codeword to allow treeless decode. */
    
    /* perform sort */
    ogg_uint32_t *codes=FUNC2(s->lengthlist,s->entries,c->used_entries);
    ogg_uint32_t **codep=(ogg_uint32_t **)FUNC6(sizeof(*codep)*n);
    
    if(codes==NULL)goto err_out;

    for(i=0;i<n;i++){
      codes[i]=FUNC7(codes[i]);
      codep[i]=codes+i;
    }

    FUNC9(codep,n,sizeof(*codep),sort32a);

    sortindex=(int *)FUNC6(n*sizeof(*sortindex));
    c->codelist=(ogg_uint32_t *)FUNC5(n*sizeof(*c->codelist));
    /* the index is a reverse index */
    for(i=0;i<n;i++){
      int position=codep[i]-codes;
      sortindex[position]=i;
    }

    for(i=0;i<n;i++)
      c->codelist[sortindex[i]]=codes[i];
    FUNC4(codes);
    
    
    
    c->valuelist=FUNC0(s,n,sortindex,&c->binarypoint);
    c->dec_index=(int *)FUNC5(n*sizeof(*c->dec_index));
    
    for(n=0,i=0;i<s->entries;i++)
      if(s->lengthlist[i]>0)
	c->dec_index[sortindex[n++]]=i;
    
    c->dec_codelengths=(char *)FUNC5(n*sizeof(*c->dec_codelengths));
    for(n=0,i=0;i<s->entries;i++)
      if(s->lengthlist[i]>0)
	c->dec_codelengths[sortindex[n++]]=s->lengthlist[i];
    
    c->dec_firsttablen=FUNC1(c->used_entries)-4; /* this is magic */
    if(c->dec_firsttablen<5)c->dec_firsttablen=5;
    if(c->dec_firsttablen>8)c->dec_firsttablen=8;
    
    tabn=1<<c->dec_firsttablen;
    c->dec_firsttable=(ogg_uint32_t *)FUNC3(tabn,sizeof(*c->dec_firsttable));
    c->dec_maxlength=0;
    
    for(i=0;i<n;i++){
      if(c->dec_maxlength<c->dec_codelengths[i])
	c->dec_maxlength=c->dec_codelengths[i];
      if(c->dec_codelengths[i]<=c->dec_firsttablen){
	ogg_uint32_t orig=FUNC7(c->codelist[i]);
	for(j=0;j<(1<<(c->dec_firsttablen-c->dec_codelengths[i]));j++)
	  c->dec_firsttable[orig|(j<<c->dec_codelengths[i])]=i+1;
      }
    }
    
    /* now fill in 'unused' entries in the firsttable with hi/lo search
       hints for the non-direct-hits */
    {
      ogg_uint32_t mask=0xfffffffeUL<<(31-c->dec_firsttablen);
      long lo=0,hi=0;
      
      for(i=0;i<tabn;i++){
	ogg_uint32_t word=i<<(32-c->dec_firsttablen);
	if(c->dec_firsttable[FUNC7(word)]==0){
	  while((lo+1)<n && c->codelist[lo+1]<=word)lo++;
	  while(    hi<n && word>=(c->codelist[hi]&mask))hi++;
	  
	  /* we only actually have 15 bits per hint to play with here.
	     In order to overflow gracefully (nothing breaks, efficiency
	     just drops), encode as the difference from the extremes. */
	  {
	    unsigned long loval=lo;
	    unsigned long hival=n-hi;
	    
	    if(loval>0x7fff)loval=0x7fff;
	    if(hival>0x7fff)hival=0x7fff;
	    c->dec_firsttable[FUNC7(word)]=
	      0x80000000UL | (loval<<15) | hival;
	  }
	}
      }
    }
  }

  return(0);
 err_out:
  FUNC10(c);
  return(-1);
}