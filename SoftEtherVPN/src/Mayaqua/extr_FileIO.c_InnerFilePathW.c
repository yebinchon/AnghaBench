
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int dir ;
typedef int UINT ;


 int ConbinePathW (int*,int ,int*,int*) ;
 int GetExeDirW (int*,int) ;
 int MAX_SIZE ;
 int NormalizePathW (int*,int ,int*) ;

void InnerFilePathW(wchar_t *dst, UINT size, wchar_t *src)
{

 if (dst == ((void*)0) || src == ((void*)0))
 {
  return;
 }

 if (src[0] != L'@')
 {
  NormalizePathW(dst, size, src);
 }
 else
 {
  wchar_t dir[MAX_SIZE];
  GetExeDirW(dir, sizeof(dir));
  ConbinePathW(dst, size, dir, &src[1]);
 }
}
