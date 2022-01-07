
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_write {int dummy; } ;


 int handle_command (int,int,struct s_write*) ;

__attribute__((used)) static void handle_end_of_data(struct s_write *wb)
{


    handle_command (0x14, 0x2c, wb);
}
