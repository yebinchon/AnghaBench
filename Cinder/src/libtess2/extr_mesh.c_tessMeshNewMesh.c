
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int meshEdgeBucketSize; int meshVertexBucketSize; int meshFaceBucketSize; int userData; scalar_t__ (* memalloc ) (int ,int) ;} ;
struct TYPE_12__ {void* inside; void* marked; int * trail; int * anEdge; struct TYPE_12__* prev; struct TYPE_12__* next; } ;
struct TYPE_11__ {int * activeRegion; scalar_t__ winding; int * Lface; int * Org; int * Lnext; int * Onext; struct TYPE_11__* Sym; struct TYPE_11__* next; } ;
struct TYPE_9__ {int * anEdge; struct TYPE_9__* prev; struct TYPE_9__* next; } ;
struct TYPE_10__ {TYPE_3__ eHeadSym; TYPE_3__ eHead; TYPE_4__ fHead; TYPE_1__ vHead; void* faceBucket; void* vertexBucket; void* edgeBucket; } ;
typedef TYPE_1__ TESSvertex ;
typedef TYPE_2__ TESSmesh ;
typedef TYPE_3__ TESShalfEdge ;
typedef TYPE_4__ TESSface ;
typedef TYPE_5__ TESSalloc ;
typedef int EdgePair ;


 void* FALSE ;
 void* createBucketAlloc (TYPE_5__*,char*,int,int) ;
 scalar_t__ stub1 (int ,int) ;

TESSmesh *tessMeshNewMesh( TESSalloc* alloc )
{
 TESSvertex *v;
 TESSface *f;
 TESShalfEdge *e;
 TESShalfEdge *eSym;
 TESSmesh *mesh = (TESSmesh *)alloc->memalloc( alloc->userData, sizeof( TESSmesh ));
 if (mesh == ((void*)0)) {
  return ((void*)0);
 }

 if (alloc->meshEdgeBucketSize < 16)
  alloc->meshEdgeBucketSize = 16;
 if (alloc->meshEdgeBucketSize > 4096)
  alloc->meshEdgeBucketSize = 4096;

 if (alloc->meshVertexBucketSize < 16)
  alloc->meshVertexBucketSize = 16;
 if (alloc->meshVertexBucketSize > 4096)
  alloc->meshVertexBucketSize = 4096;

 if (alloc->meshFaceBucketSize < 16)
  alloc->meshFaceBucketSize = 16;
 if (alloc->meshFaceBucketSize > 4096)
  alloc->meshFaceBucketSize = 4096;

 mesh->edgeBucket = createBucketAlloc( alloc, "Mesh Edges", sizeof(EdgePair), alloc->meshEdgeBucketSize );
 mesh->vertexBucket = createBucketAlloc( alloc, "Mesh Vertices", sizeof(TESSvertex), alloc->meshVertexBucketSize );
 mesh->faceBucket = createBucketAlloc( alloc, "Mesh Faces", sizeof(TESSface), alloc->meshFaceBucketSize );

 v = &mesh->vHead;
 f = &mesh->fHead;
 e = &mesh->eHead;
 eSym = &mesh->eHeadSym;

 v->next = v->prev = v;
 v->anEdge = ((void*)0);

 f->next = f->prev = f;
 f->anEdge = ((void*)0);
 f->trail = ((void*)0);
 f->marked = FALSE;
 f->inside = FALSE;

 e->next = e;
 e->Sym = eSym;
 e->Onext = ((void*)0);
 e->Lnext = ((void*)0);
 e->Org = ((void*)0);
 e->Lface = ((void*)0);
 e->winding = 0;
 e->activeRegion = ((void*)0);

 eSym->next = eSym;
 eSym->Sym = e;
 eSym->Onext = ((void*)0);
 eSym->Lnext = ((void*)0);
 eSym->Org = ((void*)0);
 eSym->Lface = ((void*)0);
 eSym->winding = 0;
 eSym->activeRegion = ((void*)0);

 return mesh;
}
