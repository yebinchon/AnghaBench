
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int comments; int * user_comments; } ;
typedef TYPE_1__ vorbis_comment ;


 scalar_t__ alloca (int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int tagcompare (int ,char*,int) ;

int vorbis_comment_query_count(vorbis_comment *vc, char *tag){
  int i,count=0;
  int taglen = strlen(tag)+1;
  char *fulltag = (char *)alloca(taglen+1);
  strcpy(fulltag,tag);
  strcat(fulltag, "=");

  for(i=0;i<vc->comments;i++){
    if(!tagcompare(vc->user_comments[i], fulltag, taglen))
      count++;
  }

  return count;
}
