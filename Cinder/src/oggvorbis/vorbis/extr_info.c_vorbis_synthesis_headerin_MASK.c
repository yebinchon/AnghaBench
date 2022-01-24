#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  rate; } ;
typedef  TYPE_1__ vorbis_info ;
struct TYPE_11__ {int /*<<< orphan*/ * vendor; } ;
typedef  TYPE_2__ vorbis_comment ;
typedef  int /*<<< orphan*/  oggpack_buffer ;
struct TYPE_12__ {int /*<<< orphan*/  b_o_s; int /*<<< orphan*/  bytes; int /*<<< orphan*/  packet; } ;
typedef  TYPE_3__ ogg_packet ;

/* Variables and functions */
 int OV_EBADHEADER ; 
 int OV_ENOTVORBIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(vorbis_info *vi,vorbis_comment *vc,ogg_packet *op){
  oggpack_buffer opb;

  if(op){
    FUNC7(&opb,op->packet,op->bytes);

    /* Which of the three types of header is this? */
    /* Also verify header-ness, vorbis */
    {
      char buffer[6];
      int packtype=FUNC6(&opb,8);
      FUNC5(buffer,0,6);
      FUNC0(&opb,buffer,6);
      if(FUNC4(buffer,"vorbis",6)){
        /* not a vorbis header */
        return(OV_ENOTVORBIS);
      }
      switch(packtype){
      case 0x01: /* least significant *bit* is read first */
        if(!op->b_o_s){
          /* Not the initial packet */
          return(OV_EBADHEADER);
        }
        if(vi->rate!=0){
          /* previously initialized info header */
          return(OV_EBADHEADER);
        }

        return(FUNC3(vi,&opb));

      case 0x03: /* least significant *bit* is read first */
        if(vi->rate==0){
          /* um... we didn't get the initial header */
          return(OV_EBADHEADER);
        }

        return(FUNC2(vc,&opb));

      case 0x05: /* least significant *bit* is read first */
        if(vi->rate==0 || vc->vendor==NULL){
          /* um... we didn;t get the initial header or comments yet */
          return(OV_EBADHEADER);
        }

        return(FUNC1(vi,&opb));

      default:
        /* Not a valid vorbis header type */
        return(OV_EBADHEADER);
        break;
      }
    }
  }
  return(OV_EBADHEADER);
}