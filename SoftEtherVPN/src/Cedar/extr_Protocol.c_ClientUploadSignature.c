
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ip_str ;
typedef size_t UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int RemoteIP; } ;
typedef TYPE_1__ SOCK ;
typedef int HTTP_HEADER ;


 int AddHttpValue (int *,int ) ;
 int Copy (int *,int ,size_t) ;
 int Free (int *) ;
 int FreeHttpHeader (int *) ;
 char* HTTP_CONTENT_TYPE3 ;
 int HTTP_PACK_RAND_SIZE_MAX ;
 int HTTP_VPN_TARGET2 ;
 int IPToStr (char*,int,int *) ;
 int * Malloc (size_t) ;
 int * NewHttpHeader (char*,int ,char*) ;
 int NewHttpValue (char*,char*) ;
 int PostHttp (TYPE_1__*,int *,int *,size_t) ;
 int Rand (int *,size_t) ;
 int Rand32 () ;
 size_t SizeOfWaterMark () ;
 int WaterMark ;

bool ClientUploadSignature(SOCK *s)
{
 HTTP_HEADER *h;
 UINT water_size, rand_size;
 UCHAR *water;
 char ip_str[128];

 if (s == ((void*)0))
 {
  return 0;
 }

 IPToStr(ip_str, sizeof(ip_str), &s->RemoteIP);

 h = NewHttpHeader("POST", HTTP_VPN_TARGET2, "HTTP/1.1");
 AddHttpValue(h, NewHttpValue("Host", ip_str));
 AddHttpValue(h, NewHttpValue("Content-Type", HTTP_CONTENT_TYPE3));
 AddHttpValue(h, NewHttpValue("Connection", "Keep-Alive"));




 rand_size = Rand32() % (HTTP_PACK_RAND_SIZE_MAX * 2);
 water_size = SizeOfWaterMark() + rand_size;
 water = Malloc(water_size);
 Copy(water, WaterMark, SizeOfWaterMark());
 Rand(&water[SizeOfWaterMark()], rand_size);


 if (PostHttp(s, h, water, water_size) == 0)
 {
  Free(water);
  FreeHttpHeader(h);
  return 0;
 }

 Free(water);
 FreeHttpHeader(h);

 return 1;
}
