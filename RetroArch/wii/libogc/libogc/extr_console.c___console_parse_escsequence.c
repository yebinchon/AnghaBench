
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cursor_row; int con_rows; int cursor_col; int con_cols; int saved_col; int saved_row; void* background; void* foreground; } ;
typedef TYPE_1__ console_data_s ;


 int __console_clear () ;
 int __console_clear_from_cursor () ;
 int __console_clear_line (int,int,int) ;
 int __console_clear_to_cursor () ;
 void** color_table ;
 TYPE_1__* curr_con ;

__attribute__((used)) static int __console_parse_escsequence(char *pchr)
{
 char chr;
 console_data_s *con;
 int i;
 int parameters[3];
 int para;

 if(!curr_con) return -1;
 con = curr_con;


 para = 0;
 parameters[0] = 0;
 parameters[1] = 0;
 parameters[2] = 0;


 i = 0;
 chr = *pchr;
 while( (para < 3) && (chr >= '0') && (chr <= '9') )
 {
  while( (chr >= '0') && (chr <= '9') )
  {

   parameters[para] *= 10;
   parameters[para] += chr - '0';
   pchr++;
   i++;
   chr = *pchr;
  }
  para++;

  if( *pchr == ';' )
  {

    pchr++;
   i++;
  }
  chr = *pchr;
 }


 chr = *pchr++;
 i++;
 switch(chr)
 {



  case 'A':
  {
   curr_con->cursor_row -= parameters[0];
   if(curr_con->cursor_row < 0) curr_con->cursor_row = 0;
   break;
  }
  case 'B':
  {
   curr_con->cursor_row += parameters[0];
   if(curr_con->cursor_row >= curr_con->con_rows) curr_con->cursor_row = curr_con->con_rows - 1;
   break;
  }
  case 'C':
  {
   curr_con->cursor_col += parameters[0];
   if(curr_con->cursor_col >= curr_con->con_cols) curr_con->cursor_col = curr_con->con_cols - 1;
   break;
  }
  case 'D':
  {
   curr_con->cursor_col -= parameters[0];
   if(curr_con->cursor_col < 0) curr_con->cursor_col = 0;
   break;
  }



  case 'H':
  case 'f':
  {
   curr_con->cursor_col = parameters[1];
   curr_con->cursor_row = parameters[0];
   if(curr_con->cursor_row >= curr_con->con_rows) curr_con->cursor_row = curr_con->con_rows - 1;
   if(curr_con->cursor_col >= curr_con->con_cols) curr_con->cursor_col = curr_con->con_cols - 1;
   break;
  }



  case 'J':
  {
   if( parameters[0] == 0 )
        __console_clear_from_cursor();
   if( parameters[0] == 1 )
        __console_clear_to_cursor();
   if( parameters[0] == 2 )
        __console_clear();

   break;
  }



  case 'K':
  {
   if( parameters[0] == 0 )
        __console_clear_line( curr_con->cursor_row, curr_con->cursor_col, curr_con->con_cols );
   if( parameters[0] == 1 )
        __console_clear_line( curr_con->cursor_row, 0, curr_con->cursor_col );
   if( parameters[0] == 2 )
        __console_clear_line( curr_con->cursor_row, 0, curr_con->con_cols);

   break;
  }



  case 's':
  {
   con->saved_col = con->cursor_col;
   con->saved_row = con->cursor_row;
   break;
  }



  case 'u':
   con->cursor_col = con->saved_col;
   con->cursor_row = con->saved_row;
   break;



  case 'm':
  {

   if( (parameters[0] >= 30) && (parameters[0] <= 39) )
   {
    parameters[0] -= 30;


    if(parameters[0] == 9){
        parameters[0] = 15;
    }
    else if(parameters[0] > 7){
     parameters[0] = 7;
    }

    if(parameters[1] == 1)
    {

     parameters[0] += 8;
    }
    con->foreground = color_table[parameters[0]];
   }

   else if( (parameters[0] >= 40) && (parameters[0] <= 47) )
   {
    parameters[0] -= 40;

    if(parameters[1] == 1)
    {

     parameters[0] += 8;
    }
    con->background = color_table[parameters[0]];
   }
    break;
  }
 }

 return(i);
}
