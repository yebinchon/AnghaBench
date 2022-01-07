
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int comments; int ** user_comments; int ** comment_lengths; } ;
typedef TYPE_1__ vorbis_comment ;


 int * _ogg_malloc (int *) ;
 void* _ogg_realloc (int **,int) ;
 int strcpy (int *,char const*) ;
 int * strlen (char const*) ;

void vorbis_comment_add(vorbis_comment *vc,const char *comment){
  vc->user_comments=_ogg_realloc(vc->user_comments,
                            (vc->comments+2)*sizeof(*vc->user_comments));
  vc->comment_lengths=_ogg_realloc(vc->comment_lengths,
                                  (vc->comments+2)*sizeof(*vc->comment_lengths));
  vc->comment_lengths[vc->comments]=strlen(comment);
  vc->user_comments[vc->comments]=_ogg_malloc(vc->comment_lengths[vc->comments]+1);
  strcpy(vc->user_comments[vc->comments], comment);
  vc->comments++;
  vc->user_comments[vc->comments]=((void*)0);
}
