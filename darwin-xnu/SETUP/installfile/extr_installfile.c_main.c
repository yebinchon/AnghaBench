
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mode_t ;
typedef int dsttmpname ;


 int COPYFILE_DATA ;
 int EX_NOINPUT ;
 int EX_UNAVAILABLE ;
 int EX_USAGE ;
 int MAXPATHLEN ;
 int O_RDONLY ;
 int O_SYMLINK ;
 int S_ISREG (int ) ;
 int close (int) ;
 int err (int ,char*,...) ;
 int errx (int ,char*,int ) ;
 int fchmod (int,int ) ;
 int fcopyfile (int,int,int *,int ) ;
 int free (void*) ;
 int fstat (int,struct stat*) ;
 int futimes (int,int *) ;
 int getmode (void*,int ) ;
 int getopt (int,char**,char*) ;
 int mkstemp (char*) ;
 int open (char const*,int,int ) ;
 int optarg ;
 scalar_t__ optind ;
 int rename (char*,char const*) ;
 void* setmode (int ) ;
 int snprintf (char*,int,char*,char const*) ;
 int usage () ;

int main(int argc, char * argv[])
{
 struct stat sb;
 void *mset;
 mode_t mode;
 bool gotmode = 0;
 int ch;
 int ret;
 int srcfd, dstfd;
 const char *src = ((void*)0);
 const char *dst = ((void*)0);
 char dsttmpname[MAXPATHLEN];

 while ((ch = getopt(argc, argv, "cSm:")) != -1) {
  switch(ch) {
   case 'c':
   case 'S':

    break;
   case 'm':
    gotmode = 1;
    mset = setmode(optarg);
    if (!mset)
     errx(EX_USAGE, "Unrecognized mode %s", optarg);

    mode = getmode(mset, 0);
    free(mset);
    break;
   case '?':
   default:
    usage();
  }
 }

 argc -= optind;
 argv += optind;

 if (argc < 2) {
  usage();
 }

 src = argv[0];
 dst = argv[1];

 srcfd = open(src, O_RDONLY | O_SYMLINK, 0);
 if (srcfd < 0)
  err(EX_NOINPUT, "open(%s)", src);

 ret = fstat(srcfd, &sb);
 if (ret < 0)
  err(EX_NOINPUT, "fstat(%s)", src);

 if (!S_ISREG(sb.st_mode))
  err(EX_USAGE, "%s is not a regular file", src);

 snprintf(dsttmpname, sizeof(dsttmpname), "%s.XXXXXX", dst);

 dstfd = mkstemp(dsttmpname);
 if (dstfd < 0)
  err(EX_UNAVAILABLE, "mkstemp(%s)", dsttmpname);

 ret = fcopyfile(srcfd, dstfd, ((void*)0),
     COPYFILE_DATA);
 if (ret < 0)
  err(EX_UNAVAILABLE, "fcopyfile(%s, %s)", src, dsttmpname);

 ret = futimes(dstfd, ((void*)0));
 if (ret < 0)
  err(EX_UNAVAILABLE, "futimes(%s)", dsttmpname);

 if (gotmode) {
  ret = fchmod(dstfd, mode);
  if (ret < 0)
   err(EX_NOINPUT, "fchmod(%s, %ho)", dsttmpname, mode);
 }

 ret = rename(dsttmpname, dst);
 if (ret < 0)
  err(EX_NOINPUT, "rename(%s, %s)", dsttmpname, dst);

 ret = close(dstfd);
 if (ret < 0)
  err(EX_NOINPUT, "close(dst)");

 ret = close(srcfd);
 if (ret < 0)
  err(EX_NOINPUT, "close(src)");

 return 0;
}
