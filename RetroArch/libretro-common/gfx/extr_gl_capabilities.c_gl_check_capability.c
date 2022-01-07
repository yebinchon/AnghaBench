
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gl_capability_enum { ____Placeholder_gl_capability_enum } gl_capability_enum ;
typedef int GLint ;
 int GL_FRAGMENT_PROGRAM_ARB ;
 int GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB ;
 int GL_MAX_TEXTURE_SIZE ;
 int GL_RENDERER ;
 int GL_VENDOR ;
 int GL_VERSION ;
 int glBindVertexArray ;
 int glClientWaitSync ;
 int glDeleteSync ;
 int glDeleteVertexArrays ;
 int * glEGLImageTargetTexture2DOES ;
 int glFenceSync ;
 int glGenVertexArrays ;
 int glGetIntegerv (int ,int*) ;
 int glGetProgramivARB (int ,int ,int*) ;
 scalar_t__ glGetString (int ) ;
 int gl_query_core_context_in_use () ;
 int gl_query_extension (char*) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*) ;
 int strstr (char const*,char*) ;

bool gl_check_capability(enum gl_capability_enum enum_idx)
{
   unsigned major = 0;
   unsigned minor = 0;
   const char *vendor = (const char*)glGetString(GL_VENDOR);
   const char *renderer = (const char*)glGetString(GL_RENDERER);
   const char *version = (const char*)glGetString(GL_VERSION);



   if (version && sscanf(version, "%u.%u", &major, &minor) != 2)

      major = minor = 0;

   (void)vendor;
   (void)renderer;

   switch (enum_idx)
   {
      case 138:




         break;
      case 143:




         break;
      case 132:




         if (gl_query_extension("ARB_sync") &&
               glFenceSync && glDeleteSync && glClientWaitSync)
            return 1;

         break;
      case 137:
         {
            static bool extension_queried = 0;
            static bool extension = 0;

            if (!extension_queried)
            {
               extension = gl_query_extension("ARB_framebuffer_object");
               extension_queried = 1;
            }

            if (extension)
               return 1;
         }
         break;
      case 128:

         if (!gl_query_core_context_in_use() && !gl_query_extension("ARB_vertex_array_object"))
            return 0;

         if (glGenVertexArrays && glBindVertexArray && glDeleteVertexArrays)
            return 1;

         break;
      case 141:



         if ( !gl_query_core_context_in_use()
               && !gl_query_extension("ARB_framebuffer_object")
               && !gl_query_extension("EXT_framebuffer_object"))
            return 0;

         if (gl_query_extension("ARB_framebuffer_object"))
            return 1;

         if (gl_query_extension("EXT_framebuffer_object"))
            return 1;

         if (major >= 3)
            return 1;
         break;

      case 146:
         break;
      case 144:
         if (gl_query_extension("KHR_debug"))
            return 1;

         if (gl_query_extension("ARB_debug_output"))
            return 1;

         break;
      case 135:
         if (major >= 3)
            return 1;
         if (gl_query_extension("OES_packed_depth_stencil"))
            return 1;
         if (gl_query_extension("EXT_packed_depth_stencil"))
            return 1;
         break;
      case 142:


         if (vendor && renderer && (strstr(vendor, "ATI") || strstr(renderer, "ATI")))
            return 0;

         if (gl_query_extension("ARB_ES2_compatibility"))
            return 1;

         break;
      case 129:
         break;
      case 139:
         if (major >= 3)
            return 1;





         {
            GLint max_texture_size = 0;
            GLint max_native_instr = 0;

            bool arb_npot = gl_query_extension("ARB_texture_non_power_of_two");
            bool arb_frag_program = gl_query_extension("ARB_fragment_program");

            glGetIntegerv(GL_MAX_TEXTURE_SIZE, &max_texture_size);







            if (arb_npot && arb_frag_program &&
                  (max_texture_size >= 8192) && (max_native_instr >= 4096))
               return 1;
         }

         break;
      case 133:




         break;

      case 134:




         if (gl_check_capability(141))
         {
            if ( gl_query_core_context_in_use() ||
                  (gl_query_extension("EXT_texture_sRGB")
                   && gl_query_extension("ARB_framebuffer_sRGB"))
               )
               return 1;
         }
         break;
      case 140:


         if (gl_check_capability(141))
         {

            if (gl_query_core_context_in_use() || gl_query_extension("ARB_texture_float"))
               return 1;
         }

         break;
      case 145:





         return 1;

         break;
      case 131:




         if (vendor && strstr(vendor, "ATI Technologies"))
            return 0;
         if (gl_query_extension("ARB_texture_storage"))
            return 1;

         break;
      case 130:




         if (gl_query_extension("EXT_texture_storage"))
            return 1;

         break;
      case 136:
      default:
         break;
   }

   return 0;
}
