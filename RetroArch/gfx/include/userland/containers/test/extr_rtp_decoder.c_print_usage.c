
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO (int *,char*,...) ;

__attribute__((used)) static void print_usage(char *program_name)
{
   LOG_INFO(((void*)0), "Usage:");
   LOG_INFO(((void*)0), "  %s [opts] <uri>", program_name);
   LOG_INFO(((void*)0), "Reads RTP packets from <uri>, decodes to standard output.");
   LOG_INFO(((void*)0), "Press the escape key to terminate the program.");
   LOG_INFO(((void*)0), "Options:");
   LOG_INFO(((void*)0), "  -h   Print this information");
   LOG_INFO(((void*)0), "  -s x Save packets to URI x");
   LOG_INFO(((void*)0), "  -v   Dump standard packet header");
   LOG_INFO(((void*)0), "  -vv  Dump entire header");
   LOG_INFO(((void*)0), "  -vvv Dump entire header and data");
}
