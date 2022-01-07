
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_filter_entry {int sfe_flags; } ;


 int SFEF_ATTACHED ;
 int sflt_entry_release (struct socket_filter_entry*) ;

__attribute__((used)) static void
sflt_detach_locked(struct socket_filter_entry *entry)
{
 if ((entry->sfe_flags & SFEF_ATTACHED) != 0) {
  entry->sfe_flags &= ~SFEF_ATTACHED;
  sflt_entry_release(entry);
 }
}
