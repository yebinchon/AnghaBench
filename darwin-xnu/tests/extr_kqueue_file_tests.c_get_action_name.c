
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int action_id_t ;
char *
get_action_name(action_id_t a)
{
 switch (a) {
 case 152:
  return "CREAT";
 case 144:
  return "MKDIR";
 case 139:
  return "READ";
 case 129:
  return "WRITE";
 case 128:
  return "WRITEFD";
 case 150:
  return "FILLFD";
 case 131:
  return "UNLINK";
 case 145:
  return "LSKEE";
 case 136:
  return "RMDIR";
 case 143:
  return "MKFIFO";
 case 147:
  return "LENGTHEN";
 case 132:
  return "TRUNC";
 case 133:
  return "SYMLINK";
 case 154:
  return "CHMOD";
 case 153:
  return "CHOWN";
 case 151:
  return "EXCHANGEDATA";
 case 138:
  return "RENAME";
 case 146:
  return "LSEEK";
 case 140:
  return "OPEN";
 case 142:
  return "MMAP";
 case 141:
  return "NOTHING";
 case 135:
  return "SETXATTR";
 case 130:
  return "UTIMES";
 case 134:
  return "STAT";
 case 148:
  return "HARDLINK";
 case 137:
  return "REVOKE";
 case 149:
  return "FUNLOCK";
 }
 return "Unknown";
}
