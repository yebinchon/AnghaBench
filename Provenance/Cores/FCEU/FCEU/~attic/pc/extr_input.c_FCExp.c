
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* UsrInputType ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void FCExp(char *text)
{
        static char *fccortab[11]={"none","arkanoid","shadow","4player","fkb","hypershot",
                        "mahjong","quizking","ftrainera","ftrainerb","oekakids"};

        static int fccortabi[11]={131,137,128,
                                 138,136,133,132,129,
                                 135,134,130};
 int y;
 for(y=0;y<11;y++)
  if(!strcmp(fccortab[y],text))
   UsrInputType[2]=fccortabi[y];
}
