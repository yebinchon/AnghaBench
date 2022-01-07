
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_stopped; int start_time; int i_calls; } ;
typedef TYPE_1__ entry_t ;


 TYPE_1__* AddTag (char*) ;
 int Init () ;
 TYPE_1__* LookupTag (char*) ;
 scalar_t__ Nested (char*) ;
 int clock () ;
 int fprintf (int ,char*,...) ;
 int g_init ;
 int stdout ;

void ProfileStart (char* str_tag) {
  entry_t* p_entry ;

  if (!g_init) {
    Init () ;
  }

  if (*str_tag == '\0') {
    fprintf (stdout, "ERROR in ProfileStart: a tag may not be \"\". Call is denied.") ;
    return ;
  }

  p_entry = LookupTag (str_tag) ;
  if (!p_entry) {

    p_entry = AddTag (str_tag) ;
    if (!p_entry) {
      fprintf (stdout, "WARNING in ProfileStart: no more space to store the tag (\"%s\"). Increase NUM_TAGS in \"profile.h\". Call is denied.\n", str_tag) ;
      return ;
    }
  }

  if (Nested (str_tag)) {
    fprintf (stdout, "ERROR in ProfileStart: nesting of equal tags not allowed (\"%s\"). Call is denied.\n", str_tag) ;
    return ;
  }

  ++p_entry->i_calls ;

  p_entry->start_time = clock () ;
  p_entry->i_stopped = 0 ;
}
