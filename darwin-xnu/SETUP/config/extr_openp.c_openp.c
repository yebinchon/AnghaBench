
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flgs ;
 int func ;
 int mod ;
 scalar_t__ searchp (char const*,char*,char*,int ) ;
 int value ;

int
openp(const char *fpath, char *file, char *complete, int flags, int mode)
{
 flgs = flags;
 mod = mode;
 if (searchp(fpath,file,complete,func) < 0) return (-1);
 return (value);
}
