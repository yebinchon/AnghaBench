
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int run_evfilt_read_tests () ;
 int run_evfilt_write_tests () ;
 int run_note_attrib_tests () ;
 int run_note_delete_tests () ;
 int run_note_extend_tests () ;
 int run_note_funlock_tests () ;
 int run_note_link_tests () ;
 int run_note_rename_tests () ;
 int run_note_revoke_tests () ;
 int run_note_write_tests () ;
 int run_poll_tests () ;

void
run_all_tests()
{
 run_note_delete_tests();
 run_note_write_tests();
 run_note_extend_tests();
 run_note_attrib_tests();
 run_note_link_tests();
 run_note_rename_tests();



 run_evfilt_read_tests();
 run_evfilt_write_tests();
 run_poll_tests();
 run_note_funlock_tests();
}
