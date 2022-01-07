
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ send (int,char*,int,int ) ;

__attribute__((used)) static int
httpWrite(int fd, const char * body, int bodysize,
          const char * headers, int headerssize)
{
 int n = 0;





 char * p;

 p = (char*)malloc(headerssize+bodysize);
 if(!p)
   return -1;
 memcpy(p, headers, headerssize);
 memcpy(p+headerssize, body, bodysize);

 n = (int)send(fd, p, headerssize+bodysize, 0);


 free(p);
 return n;
}
