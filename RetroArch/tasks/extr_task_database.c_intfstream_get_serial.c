
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intfstream_t ;


 int MSG_FOUND_DISK_LABEL ;
 int RARCH_LOG (char*,int ,char*) ;
 scalar_t__ detect_gc_game (int *,char*) ;
 scalar_t__ detect_ps1_game (int *,char*) ;
 scalar_t__ detect_psp_game (int *,char*) ;
 scalar_t__ detect_serial_ascii_game (int *,char*) ;
 scalar_t__ detect_system (int *,char const**) ;
 int msg_hash_to_str (int ) ;
 scalar_t__ string_is_equal (char const*,char*) ;

__attribute__((used)) static int intfstream_get_serial(intfstream_t *fd, char *serial)
{
  const char *system_name = ((void*)0);


  if (detect_system(fd, &system_name) < 0)
  {

    if (detect_serial_ascii_game(fd, serial))
    {

      RARCH_LOG("%s '%s'\n", msg_hash_to_str(MSG_FOUND_DISK_LABEL), serial);
      return 0;
    }


    return 0;
  }

  if (string_is_equal(system_name, "psp"))
  {
    if (detect_psp_game(fd, serial) == 0)
      return 0;
    RARCH_LOG("%s '%s'\n", msg_hash_to_str(MSG_FOUND_DISK_LABEL), serial);
  }
  else if (string_is_equal(system_name, "ps1"))
  {
    if (detect_ps1_game(fd, serial) == 0)
      return 0;
    RARCH_LOG("%s '%s'\n", msg_hash_to_str(MSG_FOUND_DISK_LABEL), serial);
  }
  else if (string_is_equal(system_name, "gc"))
  {
    if (detect_gc_game(fd, serial) == 0)
      return 0;
    RARCH_LOG("%s '%s'\n", msg_hash_to_str(MSG_FOUND_DISK_LABEL), serial);
  }
  else {
    return 0;
  }

  return 1;
}
