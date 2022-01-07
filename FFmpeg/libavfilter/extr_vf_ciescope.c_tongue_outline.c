
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int draw_line (int * const,int const,int,int,int,int,int const,int const,int const*) ;
 int monochrome_color_location (int,int const,int const,int const,int*,int*) ;

__attribute__((used)) static void
tongue_outline(uint16_t* const pixels,
               int const linesize,
               int const w,
               int const h,
               uint16_t const maxval,
               int const cie)
{
    const uint16_t rgbcolor[4] = { maxval, maxval, maxval, maxval };
    int wavelength;
    int lx, ly;
    int fx, fy;

    for (wavelength = 360; wavelength <= 830; wavelength++) {
        int icx, icy;

        monochrome_color_location(wavelength, w, h, cie,
                                  &icx, &icy);

        if (wavelength > 360)
            draw_line(pixels, linesize, lx, ly, icx, icy, w, h, rgbcolor);
        else {
            fx = icx;
            fy = icy;
        }
        lx = icx;
        ly = icy;
    }
    draw_line(pixels, linesize, lx, ly, fx, fy, w, h, rgbcolor);
}
