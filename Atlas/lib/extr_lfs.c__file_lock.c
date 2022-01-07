
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {void* l_len; void* l_start; int l_whence; int l_type; } ;
typedef void* off_t ;
typedef int lua_State ;
typedef int FILE ;


 int F_RDLCK ;
 int F_SETLK ;
 int F_UNLCK ;
 int F_WRLCK ;
 int LK_NBLCK ;
 int LK_UNLCK ;
 int SEEK_END ;
 int SEEK_SET ;
 int _locking (int ,int,long) ;
 int fcntl (int ,int ,struct flock*) ;
 int fileno (int *) ;
 int fseek (int *,long const,int ) ;
 long ftell (int *) ;
 int luaL_error (int *,char*,char const*) ;

__attribute__((used)) static int _file_lock (lua_State *L, FILE *fh, const char *mode, const long start, long len, const char *funcname) {
 int code;
 struct flock f;
 switch (*mode) {
  case 'w': f.l_type = F_WRLCK; break;
  case 'r': f.l_type = F_RDLCK; break;
  case 'u': f.l_type = F_UNLCK; break;
  default : return luaL_error (L, "%s: invalid mode", funcname);
 }
 f.l_whence = SEEK_SET;
 f.l_start = (off_t)start;
 f.l_len = (off_t)len;
 code = fcntl (fileno(fh), F_SETLK, &f);

 return (code != -1);
}
