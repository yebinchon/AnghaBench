#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct unsigned_vector_list {int dummy; } ;
struct LinkInfo {TYPE_3__* pass; int /*<<< orphan*/  tex_h; int /*<<< orphan*/  tex_w; } ;
struct shader_pass {struct unsigned_vector_list* attrib_map; scalar_t__ last_height; scalar_t__ last_width; struct LinkInfo info; } ;
struct D3D9Vertex {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ ** tex; scalar_t__* vertex_buf; scalar_t__* last_height; scalar_t__* last_width; scalar_t__ ptr; } ;
struct TYPE_10__ {int /*<<< orphan*/  passes; int /*<<< orphan*/  dev; TYPE_1__ prev; } ;
typedef  TYPE_4__ d3d9_renderchain_t ;
struct TYPE_8__ {int /*<<< orphan*/  path; } ;
struct TYPE_9__ {TYPE_2__ source; int /*<<< orphan*/  filter; } ;
typedef  scalar_t__ LPDIRECT3DVERTEXBUFFER9 ;
typedef  int /*<<< orphan*/ * LPDIRECT3DTEXTURE9 ;
typedef  int /*<<< orphan*/  LPDIRECT3DDEVICE9 ;

/* Variables and functions */
 int /*<<< orphan*/  D3DPOOL_DEFAULT ; 
 int /*<<< orphan*/  D3DPOOL_MANAGED ; 
 int /*<<< orphan*/  D3DTADDRESS_BORDER ; 
 int /*<<< orphan*/  D3DUSAGE_WRITEONLY ; 
 unsigned int RETRO_PIXEL_FORMAT_RGB565 ; 
 unsigned int TEXTURES ; 
 unsigned int FUNC0 () ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct shader_pass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,struct shader_pass*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct shader_pass) ; 
 scalar_t__ FUNC13 () ; 

__attribute__((used)) static bool FUNC14(
      LPDIRECT3DDEVICE9 dev,
      d3d9_renderchain_t *chain,
      const struct LinkInfo *info,
      unsigned _fmt)
{
   unsigned i;
   struct shader_pass pass;
   unsigned fmt =
      (_fmt == RETRO_PIXEL_FORMAT_RGB565) ?
      FUNC0() : FUNC1();

   pass.info        = *info;
   pass.last_width  = 0;
   pass.last_height = 0;
   pass.attrib_map  = (struct unsigned_vector_list*)
      FUNC13();

   chain->prev.ptr  = 0;

   for (i = 0; i < TEXTURES; i++)
   {
      chain->prev.last_width[i]  = 0;
      chain->prev.last_height[i] = 0;
      chain->prev.vertex_buf[i]  = (LPDIRECT3DVERTEXBUFFER9)
         FUNC9(
            chain->dev, 4 * sizeof(struct D3D9Vertex),
            D3DUSAGE_WRITEONLY, 0, D3DPOOL_DEFAULT, NULL);

      if (!chain->prev.vertex_buf[i])
         return false;

      chain->prev.tex[i] = (LPDIRECT3DTEXTURE9)
         FUNC8(chain->dev, NULL,
            info->tex_w, info->tex_h, 1, 0, fmt,
            D3DPOOL_MANAGED, 0, 0, 0, NULL, NULL, false);

      if (!chain->prev.tex[i])
         return false;

      FUNC7(chain->dev, 0, chain->prev.tex[i]);
      FUNC6(dev, 0,
            FUNC10(info->pass->filter));
      FUNC5(dev, 0,
            FUNC10(info->pass->filter));
      FUNC3(dev, 0, D3DTADDRESS_BORDER);
      FUNC4(dev, 0, D3DTADDRESS_BORDER);
      FUNC7(chain->dev, 0, NULL);
   }

   FUNC2(chain->dev, &pass, info->pass->source.path);

   if (!FUNC11(chain, &pass))
      return false;
   FUNC12(chain->passes, pass);
   return true;
}