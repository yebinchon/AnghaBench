
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncasecmp (char const*,char*,int) ;

__attribute__((used)) static void
parseMSEARCHReply(const char * reply, int size,
                  const char * * location, int * locationsize,
         const char * * st, int * stsize,
         const char * * usn, int * usnsize)
{
 int a, b, i;
 i = 0;
 a = i;
 b = 0;
 while(i<size)
 {
  switch(reply[i])
  {
  case ':':
    if(b==0)
    {
     b = i;





    }
    break;
  case '\x0a':
  case '\x0d':
    if(b!=0)
    {






     do { b++; } while(reply[b]==' ');
     if(0==strncasecmp(reply+a, "location", 8))
     {
      *location = reply+b;
      *locationsize = i-b;
     }
     else if(0==strncasecmp(reply+a, "st", 2))
     {
      *st = reply+b;
      *stsize = i-b;
     }
     else if(0==strncasecmp(reply+a, "usn", 3))
     {
      *usn = reply+b;
      *usnsize = i-b;
     }
     b = 0;
    }
    a = i+1;
    break;
  default:
    break;
  }
  i++;
 }
}
