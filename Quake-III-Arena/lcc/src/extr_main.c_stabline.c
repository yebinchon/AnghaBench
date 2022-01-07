
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* stabline ) (TYPE_1__*) ;} ;
struct TYPE_5__ {scalar_t__ file; scalar_t__ y; } ;
typedef TYPE_1__ Coordinate ;


 int comment ;
 scalar_t__ currentfile ;
 scalar_t__ currentline ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (scalar_t__,char*) ;
 int print (char*,int ,char*) ;
 int rewind (int *) ;
 int * srcfp ;
 scalar_t__ srcpos ;
 TYPE_4__ stabIR ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void stabline(Coordinate *cp) {
 if (cp->file && cp->file != currentfile) {
  if (srcfp)
   fclose(srcfp);
  currentfile = cp->file;
  srcfp = fopen(currentfile, "r");
  srcpos = 0;
  currentline = 0;
 }
 if (currentline != cp->y && srcfp) {
  char buf[512];
  if (srcpos > cp->y) {
   rewind(srcfp);
   srcpos = 0;
  }
  for ( ; srcpos < cp->y; srcpos++)
   if (fgets(buf, sizeof buf, srcfp) == ((void*)0)) {
    fclose(srcfp);
    srcfp = ((void*)0);
    break;
   }
  if (srcfp && srcpos == cp->y)
   print("%s%s", comment, buf);
 }
 currentline = cp->y;
 if (stabIR.stabline)
  (*stabIR.stabline)(cp);
}
