
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DTestButton (int *) ;
 int * QuizKingButtons ;
 int QuizKingData ;

__attribute__((used)) static void UpdateQuizKing(void)
{
 int x;

 QuizKingData=0;

 for(x=0;x<6;x++)
 {
  if(DTestButton(&QuizKingButtons[x]))
   QuizKingData|=1<<x;
 }

}
