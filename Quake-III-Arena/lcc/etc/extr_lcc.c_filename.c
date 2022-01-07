
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Eflag ;
 int Sflag ;
 int alist ;
 int append (char*,int ) ;
 int as ;
 int av ;
 char* basepath (char*) ;
 int callsys (int ) ;
 int cflag ;
 int compile (char*,char*) ;
 int compose (int ,int ,int ,int ) ;
 char* concat (char*,int ) ;
 int cpp ;
 int errcnt ;
 int find (char*,int ) ;
 int first (int ) ;
 int * llist ;
 char* outfile ;
 int plist ;
 int suffix (char*,int *,int) ;
 int * suffixes ;
 char* tempname (int ) ;

__attribute__((used)) static int filename(char *name, char *base) {
 int status = 0;
 static char *stemp, *itemp;

 if (base == 0)
  base = basepath(name);
 switch (suffix(name, suffixes, 4)) {
 case 0:
  compose(cpp, plist, append(name, 0), 0);
  if (Eflag) {
   status = callsys(av);
   break;
  }
  if (itemp == ((void*)0))
   itemp = tempname(first(suffixes[1]));
  compose(cpp, plist, append(name, 0), append(itemp, 0));
  status = callsys(av);
  if (status == 0)
   return filename(itemp, base);
  break;
 case 1:
  if (Eflag)
   break;
  if (Sflag)
   status = compile(name, outfile ? outfile : concat(base, first(suffixes[2])));
  else if ((status = compile(name, stemp?stemp:(stemp=tempname(first(suffixes[2]))))) == 0)
   return filename(stemp, base);
  break;
 case 2:
  if (Eflag)
   break;
  if (!Sflag) {
   char *ofile;
   if (cflag && outfile)
    ofile = outfile;
   else if (cflag)
    ofile = concat(base, first(suffixes[3]));
   else
    ofile = tempname(first(suffixes[3]));
   compose(as, alist, append(name, 0), append(ofile, 0));
   status = callsys(av);
   if (!find(ofile, llist[1]))
    llist[1] = append(ofile, llist[1]);
  }
  break;
 case 3:
  if (!find(name, llist[1]))
   llist[1] = append(name, llist[1]);
  break;
 default:
  if (Eflag) {
   compose(cpp, plist, append(name, 0), 0);
   status = callsys(av);
  }
  llist[1] = append(name, llist[1]);
  break;
 }
 if (status)
  errcnt++;
 return status;
}
