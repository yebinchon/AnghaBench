
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netagent {int netagent_data_size; } ;
typedef int netagent_peek ;
typedef int mbuf_t ;


 int ENOENT ;
 int mbuf_copydata (int ,int,int,struct netagent*) ;
 int memset (struct netagent*,int ,int) ;

__attribute__((used)) static int
netagent_packet_get_netagent_data_size(mbuf_t packet, int offset, int *err)
{
 int error = 0;

 struct netagent netagent_peek;
 memset(&netagent_peek, 0, sizeof(netagent_peek));

 *err = 0;

 error = mbuf_copydata(packet, offset, sizeof(netagent_peek), &netagent_peek);
 if (error) {
  *err = ENOENT;
  return (-1);
 }

 return (netagent_peek.netagent_data_size);
}
