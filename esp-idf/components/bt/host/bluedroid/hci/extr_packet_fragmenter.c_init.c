
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int packet_fragmenter_callbacks_t ;


 int NUMBER_OF_BUCKETS ;
 int const* callbacks ;
 int * current_fragment_packet ;
 int hash_function_naive ;
 int hash_map_new (int ,int ,int *,int *,int *) ;
 int partial_packets ;

__attribute__((used)) static void init(const packet_fragmenter_callbacks_t *result_callbacks)
{
    current_fragment_packet = ((void*)0);
    callbacks = result_callbacks;
    partial_packets = hash_map_new(NUMBER_OF_BUCKETS, hash_function_naive, ((void*)0), ((void*)0), ((void*)0));
}
