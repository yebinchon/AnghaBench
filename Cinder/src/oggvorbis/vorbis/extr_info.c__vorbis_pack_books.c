
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* codec_setup; } ;
typedef TYPE_2__ vorbis_info ;
typedef int oggpack_buffer ;
struct TYPE_11__ {int books; int floors; int* floor_type; int residues; int* residue_type; int maps; int* map_type; int modes; TYPE_1__** mode_param; int * map_param; int * residue_param; int * floor_param; int * book_param; } ;
typedef TYPE_3__ codec_setup_info ;
struct TYPE_14__ {int (* pack ) (int ,int *) ;} ;
struct TYPE_13__ {int (* pack ) (TYPE_2__*,int ,int *) ;} ;
struct TYPE_12__ {int (* pack ) (int ,int *) ;} ;
struct TYPE_9__ {int blockflag; int windowtype; int transformtype; int mapping; } ;


 int OV_EFAULT ;
 TYPE_8__** _floor_P ;
 TYPE_7__** _mapping_P ;
 TYPE_6__** _residue_P ;
 int _v_writestring (int *,char*,int) ;
 int oggpack_write (int *,int,int) ;
 int stub1 (int ,int *) ;
 int stub2 (int ,int *) ;
 int stub3 (TYPE_2__*,int ,int *) ;
 scalar_t__ vorbis_staticbook_pack (int ,int *) ;

__attribute__((used)) static int _vorbis_pack_books(oggpack_buffer *opb,vorbis_info *vi){
  codec_setup_info *ci=vi->codec_setup;
  int i;
  if(!ci)return(OV_EFAULT);

  oggpack_write(opb,0x05,8);
  _v_writestring(opb,"vorbis", 6);


  oggpack_write(opb,ci->books-1,8);
  for(i=0;i<ci->books;i++)
    if(vorbis_staticbook_pack(ci->book_param[i],opb))goto err_out;


  oggpack_write(opb,0,6);
  oggpack_write(opb,0,16);


  oggpack_write(opb,ci->floors-1,6);
  for(i=0;i<ci->floors;i++){
    oggpack_write(opb,ci->floor_type[i],16);
    if(_floor_P[ci->floor_type[i]]->pack)
      _floor_P[ci->floor_type[i]]->pack(ci->floor_param[i],opb);
    else
      goto err_out;
  }


  oggpack_write(opb,ci->residues-1,6);
  for(i=0;i<ci->residues;i++){
    oggpack_write(opb,ci->residue_type[i],16);
    _residue_P[ci->residue_type[i]]->pack(ci->residue_param[i],opb);
  }


  oggpack_write(opb,ci->maps-1,6);
  for(i=0;i<ci->maps;i++){
    oggpack_write(opb,ci->map_type[i],16);
    _mapping_P[ci->map_type[i]]->pack(vi,ci->map_param[i],opb);
  }


  oggpack_write(opb,ci->modes-1,6);
  for(i=0;i<ci->modes;i++){
    oggpack_write(opb,ci->mode_param[i]->blockflag,1);
    oggpack_write(opb,ci->mode_param[i]->windowtype,16);
    oggpack_write(opb,ci->mode_param[i]->transformtype,16);
    oggpack_write(opb,ci->mode_param[i]->mapping,8);
  }
  oggpack_write(opb,1,1);

  return(0);
err_out:
  return(-1);
}
