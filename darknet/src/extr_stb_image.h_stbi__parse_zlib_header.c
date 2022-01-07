
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__zbuf ;


 int stbi__err (char*,char*) ;
 int stbi__zget8 (int *) ;

__attribute__((used)) static int stbi__parse_zlib_header(stbi__zbuf *a)
{
   int cmf = stbi__zget8(a);
   int cm = cmf & 15;

   int flg = stbi__zget8(a);
   if ((cmf*256+flg) % 31 != 0) return stbi__err("bad zlib header","Corrupt PNG");
   if (flg & 32) return stbi__err("no preset dict","Corrupt PNG");
   if (cm != 8) return stbi__err("bad compression","Corrupt PNG");

   return 1;
}
