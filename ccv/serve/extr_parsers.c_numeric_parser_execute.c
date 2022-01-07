
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int result; int division; } ;
typedef TYPE_1__ numeric_parser_t ;







void numeric_parser_execute(numeric_parser_t* parser, const char* buf, size_t len)
{
 int i;
 for (i = 0; i < len; i++)
 {
  int digit = buf[i] - '0';
  if ((digit < 0 || digit >= 10) && buf[i] != '.')
   parser->state = 129;
  switch (parser->state)
  {
   case 128:
    parser->result = 0;
    parser->state = 130;

   case 130:
    if (buf[i] != '.')
     parser->result = parser->result * 10 + digit;
    else
     parser->state = 131;
    break;
   case 131:
    if (buf[i] == '.')
     parser->state = 129;
    else {
     parser->result += digit * parser->division;
     parser->division *= 0.1;
    }
    break;
   case 129:
    break;
  }
  if (parser->state == 129)
   break;
 }
}
