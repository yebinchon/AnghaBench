
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RASPITEX_STATE ;


 int mirror_shader ;
 int raspitexutil_build_shader_program (int *) ;
 int raspitexutil_gl_init_2_0 (int *) ;

__attribute__((used)) static int mirror_init(RASPITEX_STATE *state)
{
    int rc = raspitexutil_gl_init_2_0(state);
    if (rc != 0)
       goto end;

    rc = raspitexutil_build_shader_program(&mirror_shader);
end:
    return rc;
}
