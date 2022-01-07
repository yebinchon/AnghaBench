
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__write_context ;


 int stbiw__outfile (int *,int,int,int,int,int,int,void*,int ,int,char*,char,char,int,int ,int ,int,int,int,int,int,int,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int stbi_write_bmp_core(stbi__write_context *s, int x, int y, int comp, const void *data)
{
   int pad = (-x*3) & 3;
   return stbiw__outfile(s,-1,-1,x,y,comp,1,(void *) data,0,pad,
           "11 4 22 4" "4 44 22 444444",
           'B', 'M', 14+40+(x*3+pad)*y, 0,0, 14+40,
            40, x,y, 1,24, 0,0,0,0,0,0);
}
