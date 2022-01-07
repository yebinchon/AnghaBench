
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_error (char*,int) ;

int hb_subtitle_can_pass( int source, int mux )
{
    switch (mux)
    {
        case 137:
            switch( source )
            {
                case 132:
                case 128:
                case 131:
                case 129:
                case 130:
                case 139:
                case 138:
                case 134:
                case 133:
                    return 1;

                default:
                    return 0;
            } break;

        case 136:
            switch( source )
            {
                case 128:
                case 131:
                case 129:
                case 130:
                case 139:
                case 138:
                case 134:
                case 133:
                    return 1;

                default:
                    return 0;
            } break;



        case 135:
            return 0;
        default:

            hb_error("internal error.  Bad mux %d\n", mux);
            return 0;
    }
}
