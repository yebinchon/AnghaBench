
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASCII_CCSID ;
 int convert (char*,int,unsigned int,char const*,int,int ) ;

__attribute__((used)) static int
convert_version_info_string(const char * * stringp,
                            char * * bufp, int *left, unsigned int ccsid)

{





  if(*stringp) {
    int l = convert(*bufp, *left, ccsid, *stringp, -1, ASCII_CCSID);

    if(l <= 0)
      return -1;

    *stringp = *bufp;
    *bufp += l;
    *left -= l;
    }

  return 0;
}
