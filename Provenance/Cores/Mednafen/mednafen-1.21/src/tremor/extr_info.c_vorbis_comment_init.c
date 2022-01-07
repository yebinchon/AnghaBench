
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vorbis_comment ;


 int memset (int *,int ,int) ;

void vorbis_comment_init(vorbis_comment *vc){
  memset(vc,0,sizeof(*vc));
}
