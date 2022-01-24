#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* codec_setup; } ;
typedef  TYPE_1__ vorbis_info ;
struct TYPE_11__ {int modes; int maps; size_t* map_type; int floors; size_t* floor_type; int residues; size_t* residue_type; int books; int psys; int /*<<< orphan*/ * psy_param; struct TYPE_11__* fullbooks; scalar_t__* book_param; scalar_t__* residue_param; scalar_t__* floor_param; scalar_t__* map_param; struct TYPE_11__** mode_param; } ;
typedef  TYPE_2__ codec_setup_info ;
struct TYPE_14__ {int /*<<< orphan*/  (* free_info ) (scalar_t__) ;} ;
struct TYPE_13__ {int /*<<< orphan*/  (* free_info ) (scalar_t__) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  (* free_info ) (scalar_t__) ;} ;

/* Variables and functions */
 TYPE_9__** _floor_P ; 
 TYPE_8__** _mapping_P ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_6__** _residue_P ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

void FUNC8(vorbis_info *vi){
  codec_setup_info     *ci=vi->codec_setup;
  int i;

  if(ci){

    for(i=0;i<ci->modes;i++)
      if(ci->mode_param[i])FUNC0(ci->mode_param[i]);

    for(i=0;i<ci->maps;i++) /* unpack does the range checking */
      if(ci->map_param[i]) /* this may be cleaning up an aborted
                              unpack, in which case the below type
                              cannot be trusted */
        _mapping_P[ci->map_type[i]]->free_info(ci->map_param[i]);

    for(i=0;i<ci->floors;i++) /* unpack does the range checking */
      if(ci->floor_param[i]) /* this may be cleaning up an aborted
                                unpack, in which case the below type
                                cannot be trusted */
        _floor_P[ci->floor_type[i]]->free_info(ci->floor_param[i]);

    for(i=0;i<ci->residues;i++) /* unpack does the range checking */
      if(ci->residue_param[i]) /* this may be cleaning up an aborted
                                  unpack, in which case the below type
                                  cannot be trusted */
        _residue_P[ci->residue_type[i]]->free_info(ci->residue_param[i]);

    for(i=0;i<ci->books;i++){
      if(ci->book_param[i]){
        /* knows if the book was not alloced */
        FUNC7(ci->book_param[i]);
      }
      if(ci->fullbooks)
        FUNC6(ci->fullbooks+i);
    }
    if(ci->fullbooks)
        FUNC0(ci->fullbooks);

    for(i=0;i<ci->psys;i++)
      FUNC1(ci->psy_param[i]);

    FUNC0(ci);
  }

  FUNC2(vi,0,sizeof(*vi));
}