
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_PORT_TYPE_T ;







const char* mmal_port_type_to_string(MMAL_PORT_TYPE_T type)
{
   const char *str;

   switch (type)
   {
   case 129: str = "in"; break;
   case 128: str = "out"; break;
   case 131: str = "clk"; break;
   case 130: str = "ctr"; break;
   default: str = "invalid"; break;
   }

   return str;
}
