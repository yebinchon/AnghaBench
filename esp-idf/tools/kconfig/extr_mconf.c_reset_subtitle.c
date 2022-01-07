
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subtitle_list {struct subtitle_list* next; } ;


 int free (struct subtitle_list*) ;
 int set_dialog_subtitles (struct subtitle_list*) ;
 struct subtitle_list* subtitles ;

__attribute__((used)) static void reset_subtitle(void)
{
 struct subtitle_list *pos, *tmp;

 for (pos = subtitles; pos != ((void*)0); pos = tmp) {
  tmp = pos->next;
  free(pos);
 }
 subtitles = ((void*)0);
 set_dialog_subtitles(subtitles);
}
