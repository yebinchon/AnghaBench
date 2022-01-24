#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int begin; int end; int grouping; int partitions; int groupbook; int* secondstages; int* booklist; int partvals; } ;
typedef  TYPE_2__ vorbis_info_residue0 ;
typedef  TYPE_2__ vorbis_info_residue ;
struct TYPE_12__ {TYPE_5__* codec_setup; } ;
typedef  TYPE_4__ vorbis_info ;
typedef  int /*<<< orphan*/  oggpack_buffer ;
struct TYPE_13__ {int books; TYPE_1__** book_param; } ;
typedef  TYPE_5__ codec_setup_info ;
struct TYPE_10__ {scalar_t__ maptype; int entries; int dim; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

vorbis_info_residue *FUNC4(vorbis_info *vi,oggpack_buffer *opb){
  int j,acc=0;
  vorbis_info_residue0 *info=FUNC0(1,sizeof(*info));
  codec_setup_info     *ci=vi->codec_setup;

  info->begin=FUNC2(opb,24);
  info->end=FUNC2(opb,24);
  info->grouping=FUNC2(opb,24)+1;
  info->partitions=FUNC2(opb,6)+1;
  info->groupbook=FUNC2(opb,8);

  /* check for premature EOP */
  if(info->groupbook<0)goto errout;

  for(j=0;j<info->partitions;j++){
    int cascade=FUNC2(opb,3);
    int cflag=FUNC2(opb,1);
    if(cflag<0) goto errout;
    if(cflag){
      int c=FUNC2(opb,5);
      if(c<0) goto errout;
      cascade|=(c<<3);
    }
    info->secondstages[j]=cascade;

    acc+=FUNC1(cascade);
  }
  for(j=0;j<acc;j++){
    int book=FUNC2(opb,8);
    if(book<0) goto errout;
    info->booklist[j]=book;
  }

  if(info->groupbook>=ci->books)goto errout;
  for(j=0;j<acc;j++){
    if(info->booklist[j]>=ci->books)goto errout;
    if(ci->book_param[info->booklist[j]]->maptype==0)goto errout;
  }

  /* verify the phrasebook is not specifying an impossible or
     inconsistent partitioning scheme. */
  /* modify the phrasebook ranging check from r16327; an early beta
     encoder had a bug where it used an oversized phrasebook by
     accident.  These files should continue to be playable, but don't
     allow an exploit */
  {
    int entries = ci->book_param[info->groupbook]->entries;
    int dim = ci->book_param[info->groupbook]->dim;
    int partvals = 1;
    if (dim<1) goto errout;
    while(dim>0){
      partvals *= info->partitions;
      if(partvals > entries) goto errout;
      dim--;
    }
    info->partvals = partvals;
  }

  return(info);
 errout:
  FUNC3(info);
  return(NULL);
}