
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vorbis_comment ;


 char* alloca (scalar_t__) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int vorbis_comment_add (int *,char*) ;

void vorbis_comment_add_tag(vorbis_comment *vc, const char *tag, const char *contents){
  char *comment=alloca(strlen(tag)+strlen(contents)+2);
  strcpy(comment, tag);
  strcat(comment, "=");
  strcat(comment, contents);
  vorbis_comment_add(vc, comment);
}
