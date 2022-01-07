
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* KEYBAGDTEST_PATH ;
 int O_CREAT ;
 int O_RDWR ;
 int PROTECTION_CLASS_A ;
 int close (int) ;
 int open_dprotected_np (char*,int,int ,int ) ;
 int sleep (int) ;
 int spawn_proc (char* const*) ;
 int sync () ;
 int unlink (char*) ;

int
lock_device(void) {
 int result = -1;
 char * const kbd_args[] = {KEYBAGDTEST_PATH, "lock", ((void*)0)};
 result = spawn_proc(kbd_args);
 if(result) {
  return result;
 }






 (void) unlink("/private/var/foo_test_file");

 while(1) {
  int dp_fd;

  dp_fd = open_dprotected_np(
   "/private/var/foo_test_file",
   O_RDWR|O_CREAT,
   PROTECTION_CLASS_A,
   0
  );

  if(dp_fd >= 0) {

   close(dp_fd);
   result = unlink("/private/var/foo_test_file");

   if(result) {
    return result;
   }

   sync();
   sleep(1);
  } else {

   break;
  }
 }
 return 0;
}
