
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrs {struct ifaddrs* ifa_next; } ;



__attribute__((used)) static void addToEnd(struct ifaddrs **p_resultList, struct ifaddrs *p_entry)
{
   if(!*p_resultList)
      *p_resultList = p_entry;
   else
   {
      struct ifaddrs *l_cur = *p_resultList;
      while(l_cur->ifa_next)
         l_cur = l_cur->ifa_next;
      l_cur->ifa_next = p_entry;
   }
}
