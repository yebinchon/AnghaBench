
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;
typedef char UCHAR ;


 char* Malloc (size_t) ;
 size_t TRAFFIC_BUF_SIZE ;
 int rand () ;

void TtGenerateRandomData(UCHAR **buf, UINT *size)
{
 UCHAR *tmp;
 UINT sz;
 UINT i;

 if (buf == ((void*)0) || size == ((void*)0))
 {
  return;
 }

 sz = TRAFFIC_BUF_SIZE;
 tmp = Malloc(sz);
 for (i = 0;i < sz;i++)
 {
  tmp[i] = rand() % 256;

  if (tmp[i] == '!')
  {
   tmp[i] = '_';
  }
 }

 *buf = tmp;
 *size = sz;
}
