
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ x; scalar_t__ width; scalar_t__ y; scalar_t__ height; } ;
struct TYPE_8__ {int neighbors; TYPE_3__** letters; TYPE_1__ rect; } ;
typedef TYPE_2__ ccv_textline_t ;
struct TYPE_9__ {TYPE_1__ rect; } ;
typedef TYPE_3__ ccv_letter_t ;


 scalar_t__ ccmalloc (int) ;
 scalar_t__ ccrealloc (TYPE_3__**,int) ;

__attribute__((used)) static void _ccv_swt_add_letter(ccv_textline_t* textline, ccv_letter_t* letter)
{
 if (textline->neighbors == 0)
 {
  textline->rect = letter->rect;
  textline->neighbors = 1;
  textline->letters = (ccv_letter_t**)ccmalloc(sizeof(ccv_letter_t*) * textline->neighbors);
  textline->letters[0] = letter;
 } else {
  int i, flag = 0;
  for (i = 0; i < textline->neighbors; i++)
   if (textline->letters[i] == letter)
   {
    flag = 1;
    break;
   }
  if (flag)
   return;
  if (letter->rect.x < textline->rect.x)
  {
   textline->rect.width += textline->rect.x - letter->rect.x;
   textline->rect.x = letter->rect.x;
  }
  if (letter->rect.x + letter->rect.width > textline->rect.x + textline->rect.width)
   textline->rect.width = letter->rect.x + letter->rect.width - textline->rect.x;
  if (letter->rect.y < textline->rect.y)
  {
   textline->rect.height += textline->rect.y - letter->rect.y;
   textline->rect.y = letter->rect.y;
  }
  if (letter->rect.y + letter->rect.height > textline->rect.y + textline->rect.height)
   textline->rect.height = letter->rect.y + letter->rect.height - textline->rect.y;
  textline->neighbors++;
  textline->letters = (ccv_letter_t**)ccrealloc(textline->letters, sizeof(ccv_letter_t*) * textline->neighbors);
  textline->letters[textline->neighbors - 1] = letter;
 }
}
