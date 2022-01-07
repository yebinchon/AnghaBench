
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LIST ;
typedef char IP ;
typedef int BUF ;


 int Add (int *,int ) ;
 scalar_t__ BFLETS_DNS_PROXY_TIMEOUT_FOR_GET_F ;
 char* CfgReadNextLine (int *) ;
 int Clone (char*,int) ;
 int Free (char*) ;
 int FreeBuf (int *) ;
 int IsEmptyStr (char*) ;
 int IsIPv6LocalNetworkAddress (char*) ;
 int IsZeroIp (char*) ;
 char* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;
 int * QueryFileByIPv6Udp (int *,scalar_t__,int*) ;
 int * ReadDump (int ) ;
 int ReleaseList (int *) ;
 int StartWith (char*,char*) ;
 scalar_t__ StrToIP6 (char*,char*) ;
 int Trim (char*) ;
 int UDP_FILE_QUERY_BFLETS_TXT_FILENAME ;

BUF *QueryFileByUdpForJapanBFlets(UINT timeout, bool *cancel)
{
 bool dummy_flag = 0;
 BUF *txt_buf = ((void*)0);
 BUF *ret = ((void*)0);
 LIST *ip_list = ((void*)0);
 UINT i;

 if (cancel == ((void*)0))
 {
  cancel = &dummy_flag;
 }
 if (timeout == 0)
 {
  timeout = BFLETS_DNS_PROXY_TIMEOUT_FOR_GET_F;
 }

 txt_buf = ReadDump(UDP_FILE_QUERY_BFLETS_TXT_FILENAME);
 if (txt_buf == ((void*)0))
 {
  return ((void*)0);
 }

 ip_list = NewListFast(((void*)0));

 while (1)
 {
  char *line = CfgReadNextLine(txt_buf);
  if (line == ((void*)0))
  {
   break;
  }

  Trim(line);

  if (IsEmptyStr(line) == 0 && StartWith(line, "#") == 0)
  {
   IP ip;

   if (StrToIP6(&ip, line))
   {
    if (IsZeroIp(&ip) == 0)
    {
     if (IsIPv6LocalNetworkAddress(&ip) == 0)
     {
      Add(ip_list, Clone(&ip, sizeof(IP)));
     }
    }
   }
  }

  Free(line);
 }

 FreeBuf(txt_buf);

 ret = QueryFileByIPv6Udp(ip_list, timeout, cancel);

 for (i = 0;i < LIST_NUM(ip_list);i++)
 {
  IP *ip = LIST_DATA(ip_list, i);

  Free(ip);
 }

 ReleaseList(ip_list);

 return ret;
}
