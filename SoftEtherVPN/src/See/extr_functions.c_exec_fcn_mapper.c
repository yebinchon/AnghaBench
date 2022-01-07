
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int * exec_fcn ;




 int count_packets ;
 int tcp_session ;

exec_fcn exec_fcn_mapper(uint32 index)
{
 switch (index)
 {
 case 129:
  return (exec_fcn) count_packets;

 case 128:
  return (exec_fcn) tcp_session;
 default:
  return ((void*)0);
 }

 return ((void*)0);
}
