
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_type_t ;
typedef int hb_value_t ;
 int hb_value_type (int const*) ;
 int json_incref (int *) ;
 int * xform_array (int const*,int) ;
 int * xform_bool (int const*,int) ;
 int * xform_dict (int const*,int) ;
 int * xform_double (int const*,int) ;
 int * xform_int (int const*,int) ;
 int * xform_null (int) ;
 int * xform_string (int const*,int) ;

hb_value_t* hb_value_xform(const hb_value_t *value, hb_value_type_t type)
{
    hb_value_type_t src_type = hb_value_type(value);
    if (src_type == type && value != ((void*)0))
    {
        json_incref((hb_value_t*)value);
        return (hb_value_t*)value;
    }
    switch (src_type)
    {
        default:
        case 129:
        {
            return xform_null(type);
        }
        case 133:
        {
            return xform_bool(value, type);
        }
        case 130:
        {
            return xform_int(value, type);
        }
        case 131:
        {
            return xform_double(value, type);
        }
        case 128:
        {
            return xform_string(value, type);
        }
        case 134:
        {
            return xform_array(value, type);
        }
        case 132:
        {
            return xform_dict(value, type);
        }
    }
}
