
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Curl_dns_entry {int dummy; } ;
struct TYPE_3__ {int addr; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int aprintf (char*,char*,int ) ;
 TYPE_1__* calloc (int,int) ;
 int data_key ;
 TYPE_1__* data_node ;
 int fake_ai () ;

__attribute__((used)) static CURLcode create_node(void)
{
  data_key = aprintf("%s:%d", "dummy", 0);
  if(!data_key)
    return CURLE_OUT_OF_MEMORY;

  data_node = calloc(1, sizeof(struct Curl_dns_entry));
  if(!data_node)
    return CURLE_OUT_OF_MEMORY;

  data_node->addr = fake_ai();
  if(!data_node->addr)
    return CURLE_OUT_OF_MEMORY;

  return CURLE_OK;
}
