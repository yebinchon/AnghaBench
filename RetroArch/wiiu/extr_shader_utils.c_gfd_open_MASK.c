#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_11__ {int type; scalar_t__ magic; int headerSize; scalar_t__ majorVersion; int dataSize; } ;
struct TYPE_16__ {TYPE_1__ header; scalar_t__ data; } ;
struct TYPE_15__ {TYPE_3__* ps; TYPE_2__* vs; scalar_t__ data; } ;
struct TYPE_14__ {scalar_t__ magic; int headerSize; scalar_t__ majorVersion; scalar_t__ gpuVersion; int /*<<< orphan*/  align; } ;
struct TYPE_13__ {scalar_t__ program; } ;
struct TYPE_12__ {scalar_t__ program; } ;
typedef  TYPE_2__ GX2VertexShader ;
typedef  TYPE_3__ GX2PixelShader ;
typedef  TYPE_4__ GFDFileHeader ;
typedef  TYPE_5__ GFDFile ;
typedef  int /*<<< orphan*/  GFDBlockHeader ;
typedef  TYPE_6__ GFDBlock ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ GFD_BLOCK_MAGIC ; 
 scalar_t__ GFD_BLOCK_MAJOR_VERSION ; 
 int GFD_BLOCK_TYPE_END_OF_FILE ; 
#define  GFD_BLOCK_TYPE_PIXEL_SHADER_HEADER 131 
#define  GFD_BLOCK_TYPE_PIXEL_SHADER_PROGRAM 130 
#define  GFD_BLOCK_TYPE_VERTEX_SHADER_HEADER 129 
#define  GFD_BLOCK_TYPE_VERTEX_SHADER_PROGRAM 128 
 scalar_t__ GFD_FILE_GPU_VERSION ; 
 scalar_t__ GFD_FILE_MAGIC ; 
 scalar_t__ GFD_FILE_MAJOR_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  GX2_INVALIDATE_MODE_CPU_SHADER ; 
 int /*<<< orphan*/  GX2_SHADER_ALIGNMENT ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_5__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

GFDFile *FUNC11(const char *filename)
{
   GFDFile* gfd = FUNC2(1, sizeof(*gfd));
   FILE *fp = FUNC4(filename, "rb");

   if (!fp)
      goto error;

   FUNC6(fp, 0, SEEK_END);
   int size = FUNC7(fp);
   FUNC6(fp, 0, SEEK_SET);
   gfd->data = FUNC1(size, GX2_SHADER_ALIGNMENT);
   FUNC5(gfd->data, 1, size, fp);
   FUNC3(fp);

   GFDFileHeader *header = (GFDFileHeader *)gfd->data;

   if (header->magic != GFD_FILE_MAGIC)
   {
      FUNC10("wrong file magic number.\n");
      goto error;
   }

   if (header->headerSize != sizeof(GFDFileHeader))
   {
      FUNC10("wrong file header size.\n");
      goto error;
   }

   if (header->majorVersion != GFD_FILE_MAJOR_VERSION)
   {
      FUNC10("file version not supported.\n");
      goto error;
   }

   if (header->gpuVersion != GFD_FILE_GPU_VERSION)
   {
      FUNC10("gpu version not supported.\n");
      goto error;
   }

   if (!header->align)
   {
      FUNC10("data is not aligned.\n");
      goto error;
   }

   GFDBlock *block = (GFDBlock *)(gfd->data + header->headerSize);

   while (block->header.type != GFD_BLOCK_TYPE_END_OF_FILE)
   {
      if (block->header.magic != GFD_BLOCK_MAGIC)
      {
         FUNC10("wrong block magic number.\n");
         goto error;
      }

      if (block->header.headerSize != sizeof(GFDBlockHeader))
      {
         FUNC10("wrong block header size.\n");
         goto error;
      }

      if (block->header.majorVersion != GFD_BLOCK_MAJOR_VERSION)
      {
         FUNC10("block version not supported.\n");
         goto error;
      }

      switch (block->header.type)
      {
      case GFD_BLOCK_TYPE_VERTEX_SHADER_HEADER:
         if (gfd->vs)
            continue;

         gfd->vs = (GX2VertexShader*)block->data;
         if(!FUNC9(block))
            goto error;

         break;

      case GFD_BLOCK_TYPE_VERTEX_SHADER_PROGRAM:
         if(gfd->vs->program)
            continue;

         FUNC0(GX2_INVALIDATE_MODE_CPU_SHADER, block->data, block->header.dataSize);
         gfd->vs->program = block->data;
         break;

      case GFD_BLOCK_TYPE_PIXEL_SHADER_HEADER:
         if (gfd->ps)
            continue;

         gfd->ps = (GX2PixelShader*)block->data;
         if(!FUNC9(block))
            goto error;

         break;

      case GFD_BLOCK_TYPE_PIXEL_SHADER_PROGRAM:
         if(gfd->ps->program)
            continue;

         FUNC0(GX2_INVALIDATE_MODE_CPU_SHADER, block->data, block->header.dataSize);
         gfd->ps->program = block->data;
         break;

      default:
         break;
      }

      block = (GFDBlock *)((u8 *)block + block->header.headerSize + block->header.dataSize);
   }

   if(!gfd->vs)
   {
      FUNC10("vertex shader is missing.\n");
      goto error;
   }

   if(!gfd->vs->program)
   {
      FUNC10("vertex shader program is missing.\n");
      goto error;
   }

   if(!gfd->ps)
   {
      FUNC10("pixel shader is missing.\n");
      goto error;
   }

   if(!gfd->ps->program)
   {
      FUNC10("pixel shader program is missing.\n");
      goto error;
   }

   return gfd;

error:
   FUNC10("failed to open file : %s\n", filename);
   FUNC8(gfd);

   return NULL;
}