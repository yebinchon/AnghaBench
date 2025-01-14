
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YYSTYPE ;


 int YYMAXSTACKSIZE ;
 int printf (char*,int,int) ;
 scalar_t__ yydebug ;
 int yyfree (short*) ;
 scalar_t__ yyrealloc (char*,int) ;
 short* yyss ;
 int yystacksize ;
 int * yyvs ;

__attribute__((used)) static int

inline

yygrow ()
{
    int old_stacksize = yystacksize;
    short *new_yyss;
    YYSTYPE *new_yyvs;

    if (yystacksize == YYMAXSTACKSIZE)
        return (1);
    yystacksize += (yystacksize + 1 ) / 2;
    if (yystacksize > YYMAXSTACKSIZE)
        yystacksize = YYMAXSTACKSIZE;





    new_yyss = (short *) yyrealloc ((char *)yyss, yystacksize * sizeof (short));
    if (new_yyss == 0)
        return (1);
    new_yyvs = (YYSTYPE *) yyrealloc ((char *)yyvs, yystacksize * sizeof (YYSTYPE));
    if (new_yyvs == 0)
    {
        yyfree (new_yyss);
        return (1);
    }
    yyss = new_yyss;
    yyvs = new_yyvs;
    return (0);
}
