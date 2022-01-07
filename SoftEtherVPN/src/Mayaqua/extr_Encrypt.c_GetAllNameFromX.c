
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp3 ;
typedef int tmp2 ;
typedef int tmp1 ;
typedef int tmp ;
struct TYPE_6__ {TYPE_1__* serial; int subject_name; } ;
typedef TYPE_2__ X ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_5__ {int size; int * data; } ;


 int BinToStr (char*,int,int *,int) ;
 int GetAllNameFromName (int *,int ,int ) ;
 int GetXDigest (TYPE_2__*,int *,int) ;
 int MD5_SIZE ;
 int SHA1_SIZE ;
 int UniFormat (int *,int,char*,char*,...) ;
 int UniStrCat (int *,int ,int *) ;

void GetAllNameFromX(wchar_t *str, UINT size, X *x)
{
 UCHAR md5[MD5_SIZE], sha1[SHA1_SIZE];
 char tmp1[MD5_SIZE * 3 + 8], tmp2[SHA1_SIZE * 3 + 8];
 wchar_t tmp3[sizeof(tmp1) + sizeof(tmp2) + 64];

 if (str == ((void*)0) || x == ((void*)0))
 {
  return;
 }

 GetAllNameFromName(str, size, x->subject_name);

 if (x->serial != ((void*)0) && x->serial->size >= 1)
 {
  char tmp[128];
  wchar_t tmp2[128];

  BinToStr(tmp, sizeof(tmp), x->serial->data, x->serial->size);
  UniFormat(tmp2, sizeof(tmp2), L", SERIAL=\"%S\"", tmp);

  UniStrCat(str, size, tmp2);
 }


 GetXDigest(x, md5, 0);
 GetXDigest(x, sha1, 1);

 BinToStr(tmp1, sizeof(tmp1), md5, MD5_SIZE);
 BinToStr(tmp2, sizeof(tmp2), sha1, SHA1_SIZE);

 UniFormat(tmp3, sizeof(tmp3), L" (Digest: MD5=\"%S\", SHA1=\"%S\")", tmp1, tmp2);
 UniStrCat(str, size, tmp3);
}
