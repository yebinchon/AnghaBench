
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long comments; char** user_comments; } ;
typedef TYPE_1__ vorbis_comment ;


 char* alloca (int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int tagcompare (char*,char*,int) ;

char *vorbis_comment_query(vorbis_comment *vc, const char *tag, int count){
  long i;
  int found = 0;
  int taglen = strlen(tag)+1;
  char *fulltag = alloca(taglen+ 1);

  strcpy(fulltag, tag);
  strcat(fulltag, "=");

  for(i=0;i<vc->comments;i++){
    if(!tagcompare(vc->user_comments[i], fulltag, taglen)){
      if(count == found)

              return vc->user_comments[i] + taglen;
      else
        found++;
    }
  }
  return ((void*)0);
}
