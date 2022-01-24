#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* codec_setup; } ;
typedef  TYPE_2__ vorbis_info ;
typedef  int /*<<< orphan*/  oggpack_buffer ;
struct TYPE_11__ {int books; int floors; int* floor_type; int residues; int* residue_type; int maps; int* map_type; int modes; TYPE_1__** mode_param; int /*<<< orphan*/ * map_param; int /*<<< orphan*/ * residue_param; int /*<<< orphan*/ * floor_param; int /*<<< orphan*/ * book_param; } ;
typedef  TYPE_3__ codec_setup_info ;
struct TYPE_14__ {int /*<<< orphan*/  (* pack ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_13__ {int /*<<< orphan*/  (* pack ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  (* pack ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_9__ {int blockflag; int windowtype; int transformtype; int mapping; } ;

/* Variables and functions */
 int OV_EFAULT ; 
 TYPE_8__** _floor_P ; 
 TYPE_7__** _mapping_P ; 
 TYPE_6__** _residue_P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(oggpack_buffer *opb,vorbis_info *vi){
  codec_setup_info     *ci=vi->codec_setup;
  int i;
  if(!ci)return(OV_EFAULT);

  FUNC1(opb,0x05,8);
  FUNC0(opb,"vorbis", 6);

  /* books */
  FUNC1(opb,ci->books-1,8);
  for(i=0;i<ci->books;i++)
    if(FUNC5(ci->book_param[i],opb))goto err_out;

  /* times; hook placeholders */
  FUNC1(opb,0,6);
  FUNC1(opb,0,16);

  /* floors */
  FUNC1(opb,ci->floors-1,6);
  for(i=0;i<ci->floors;i++){
    FUNC1(opb,ci->floor_type[i],16);
    if(_floor_P[ci->floor_type[i]]->pack)
      _floor_P[ci->floor_type[i]]->pack(ci->floor_param[i],opb);
    else
      goto err_out;
  }

  /* residues */
  FUNC1(opb,ci->residues-1,6);
  for(i=0;i<ci->residues;i++){
    FUNC1(opb,ci->residue_type[i],16);
    _residue_P[ci->residue_type[i]]->pack(ci->residue_param[i],opb);
  }

  /* maps */
  FUNC1(opb,ci->maps-1,6);
  for(i=0;i<ci->maps;i++){
    FUNC1(opb,ci->map_type[i],16);
    _mapping_P[ci->map_type[i]]->pack(vi,ci->map_param[i],opb);
  }

  /* modes */
  FUNC1(opb,ci->modes-1,6);
  for(i=0;i<ci->modes;i++){
    FUNC1(opb,ci->mode_param[i]->blockflag,1);
    FUNC1(opb,ci->mode_param[i]->windowtype,16);
    FUNC1(opb,ci->mode_param[i]->transformtype,16);
    FUNC1(opb,ci->mode_param[i]->mapping,8);
  }
  FUNC1(opb,1,1);

  return(0);
err_out:
  return(-1);
}