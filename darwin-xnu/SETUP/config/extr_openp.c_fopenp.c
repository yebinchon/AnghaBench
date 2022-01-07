
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ffunc ;
 char const* ftyp ;
 int * fvalue ;
 scalar_t__ searchp (char const*,char*,char*,int ) ;

FILE *
fopenp(const char *fpath, char *file, char *complete, const char *ftype)
{
 ftyp = ftype;
 if (searchp(fpath,file,complete,ffunc) < 0) return (0);
 return (fvalue);
}
