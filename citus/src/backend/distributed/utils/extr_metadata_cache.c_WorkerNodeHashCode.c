
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {char* workerName; int workerPort; } ;
typedef TYPE_1__ WorkerNode ;
typedef int Size ;


 int WORKER_LENGTH ;
 int string_hash (char const*,int ) ;
 int tag_hash (int const*,int) ;

__attribute__((used)) static uint32
WorkerNodeHashCode(const void *key, Size keySize)
{
 const WorkerNode *worker = (const WorkerNode *) key;
 const char *workerName = worker->workerName;
 const uint32 *workerPort = &(worker->workerPort);


 uint32 result = 17;
 result = 37 * result + string_hash(workerName, WORKER_LENGTH);
 result = 37 * result + tag_hash(workerPort, sizeof(uint32));
 return result;
}
