
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int start_time; int i_stopped; int l_total_ms; } ;
typedef TYPE_1__ entry_t ;
typedef scalar_t__ clock_t ;


 TYPE_1__* LookupTag (char*) ;
 scalar_t__ clock () ;
 int fprintf (int ,char*,...) ;
 int stdout ;

void ProfileStop (char* str_tag) {
  clock_t end_time ;
  entry_t* p_entry ;

  if (*str_tag == '\0') {
    fprintf (stdout, "ERROR in ProfileStop: a tag may not be \"\". Call is denied.") ;
    return ;
  }

  p_entry = LookupTag (str_tag) ;
  if (!p_entry) {
    fprintf (stdout, "WARNING in ProfileStop: tag \"%s\" was never started. Call is denied.\n", str_tag) ;
    return ;
  }

  end_time = clock () ;
  p_entry->l_total_ms += end_time - p_entry->start_time ;

  p_entry->start_time = -1 ;
  p_entry->i_stopped = 1 ;
}
