
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int HashId; } ;
typedef int MD ;
typedef TYPE_1__ IKE_HASH ;


 int Debug (char*) ;
 int FreeMd (int *) ;





 scalar_t__ MdProcess (int *,void*,void*,int ) ;
 int * NewMd (char*) ;
 int SetMdKey (int *,void*,int ) ;

void IkeHMac(IKE_HASH *h, void *dst, void *key, UINT key_size, void *data, UINT data_size)
{
 MD *md = ((void*)0);

 switch (h->HashId)
 {
 case 132:
  md = NewMd("MD5");
  break;
 case 131:
  md = NewMd("SHA1");
  break;
 case 130:
  md = NewMd("SHA256");
  break;
 case 129:
  md = NewMd("SHA384");
  break;
 case 128:
  md = NewMd("SHA512");
  break;
 }

 if (md == ((void*)0))
 {
  Debug("IkeHMac(): The MD object is NULL! Either NewMd() failed or the current algorithm is not handled by the switch-case block.\n");
  return;
 }

 if (SetMdKey(md, key, key_size) == 0)
 {
  Debug("IkeHMac(): SetMdKey() failed!\n");
  goto cleanup;
 }

 if (MdProcess(md, dst, data, data_size) == 0)
 {
  Debug("IkeHMac(): MdProcess() returned 0!\n");
 }

cleanup:
 FreeMd(md);
}
