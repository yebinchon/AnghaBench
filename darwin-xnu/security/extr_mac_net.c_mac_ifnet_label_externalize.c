
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_EXTERNALIZE (int ,struct label*,char*,char*,size_t) ;
 int ifnet ;

__attribute__((used)) static int
mac_ifnet_label_externalize(struct label *label, char *elements,
    char *outbuf, size_t outbuflen)
{

 return (MAC_EXTERNALIZE(ifnet, label, elements, outbuf, outbuflen));
}
