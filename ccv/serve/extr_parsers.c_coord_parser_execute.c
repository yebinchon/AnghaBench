
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int x; int y; int division; } ;
typedef TYPE_1__ coord_parser_t ;
void coord_parser_execute(coord_parser_t* parser, const char* buf, size_t len)
{
 int i;
 for (i = 0; i < len; i++)
 {
  int digit = buf[i] - '0';
  if ((digit < 0 || digit >= 10) && buf[i] != '.' && buf[i] != 'x' && buf[i] != 'X')
   parser->state = 133;
  switch (parser->state)
  {
   case 132:
    parser->x = parser->y = 0;
    parser->state = 130;

   case 130:
    if (buf[i] != 'x' && buf[i] != 'X')
    {
     if (buf[i] != '.')
      parser->x = parser->x * 10 + digit;
     else
      parser->state = 131;
    } else
     parser->state = 128;
    break;
   case 131:
    if (buf[i] != 'x' && buf[i] != 'X')
    {
     if (buf[i] == '.')
     {
      parser->state = 133;
      break;
     }
     parser->x += digit * parser->division;
     parser->division *= 0.1;
    } else {
     parser->division = 0.1;
     parser->state = 128;
    }
    break;
   case 128:
    if (buf[i] == 'x' || buf[i] == 'X')
    {
     parser->state = 133;
     break;
    }
    if (buf[i] != '.')
     parser->y = parser->y * 10 + digit;
    else
     parser->state = 129;
    break;
   case 129:
    if (buf[i] == 'x' || buf[i] == 'X' || buf[i] == '.')
    {
     parser->state = 133;
     break;
    }
    parser->y += digit * parser->division;
    parser->division *= 0.1;
    break;
   case 133:
    break;
  }
  if (parser->state == 133)
   break;
 }
}
