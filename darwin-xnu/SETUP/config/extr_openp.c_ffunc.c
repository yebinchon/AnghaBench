
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fopen (char*,int ) ;
 int ftyp ;
 scalar_t__ fvalue ;

__attribute__((used)) static int
ffunc(char *fnam)
{
 fvalue = fopen (fnam,ftyp);
 return (fvalue == 0);
}
