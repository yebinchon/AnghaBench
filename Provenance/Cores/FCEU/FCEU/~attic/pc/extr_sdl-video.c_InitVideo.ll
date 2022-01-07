; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-video.c_InitVideo.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-video.c_InitVideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"Initializing video...\00", align 1
@srendline = common dso_local global double 0.000000e+00, align 8
@erendline = common dso_local global double 0.000000e+00, align 8
@_fullscreen = common dso_local global i64 0, align 8
@Settings = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@sponge = common dso_local global i32 0, align 4
@SDL_INIT_VIDEO = common dso_local global i32 0, align 4
@inited = common dso_local global i32 0, align 4
@tlines = common dso_local global double 0.000000e+00, align 8
@SDL_HWSURFACE = common dso_local global i32 0, align 4
@SDL_FULLSCREEN = common dso_local global i32 0, align 4
@SDL_HWPALETTE = common dso_local global i32 0, align 4
@_doublebuf = common dso_local global i64 0, align 8
@SDL_DOUBLEBUF = common dso_local global i32 0, align 4
@_bpp = common dso_local global i32 0, align 4
@_xscalefs = common dso_local global double 0.000000e+00, align 8
@exs = common dso_local global double 0.000000e+00, align 8
@_yscalefs = common dso_local global double 0.000000e+00, align 8
@eys = common dso_local global double 0.000000e+00, align 8
@_efxfs = common dso_local global i64 0, align 8
@eefx = common dso_local global i64 0, align 8
@_xres = common dso_local global double 0.000000e+00, align 8
@NWIDTH = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"xscale out of bounds.\00", align 1
@_yres = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"yscale out of bounds.\00", align 1
@screen = common dso_local global %struct.TYPE_14__* null, align 8
@_xscale = common dso_local global double 0.000000e+00, align 8
@_yscale = common dso_local global double 0.000000e+00, align 8
@_efx = common dso_local global i64 0, align 8
@curbpp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c" Video Mode: %d x %d x %d bpp %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"full screen\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [104 x i8] c"  Sorry, %dbpp modes are not supported by FCE Ultra.  Supported bit depths are 8bpp, 16bpp, and 32bpp.\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"FCE Ultra\00", align 1
@fceu_playicon = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@IconSurface = common dso_local global i32 0, align 4
@paletterefresh = common dso_local global i32 0, align 4
@EO_CLIPSIDES = common dso_local global i32 0, align 4
@SDL_GL_DOUBLEBUFFER = common dso_local global i32 0, align 4
@SDL_OPENGL = common dso_local global i32 0, align 4
@_opengl = common dso_local global i64 0, align 8
@_openglip = common dso_local global i32 0, align 4
@_stretchx = common dso_local global i32 0, align 4
@_stretchy = common dso_local global i32 0, align 4
@eoptions = common dso_local global i32 0, align 4
@sdlhaveogl = common dso_local global i64 0, align 8
@usingogl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitVideo(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = call i32 @FCEUI_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @FCEUI_GetCurrentVidSystem(double* @srendline, double* @erendline)
  %10 = load i64, i64* @_fullscreen, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @Settings, i32 0, i32 0), align 4
  store i32 %13, i32* @sponge, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @Settings, i32 0, i32 1), align 4
  store i32 %15, i32* @sponge, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* @SDL_INIT_VIDEO, align 4
  %18 = call i32 @SDL_WasInit(i32 %17)
  %19 = load i32, i32* @SDL_INIT_VIDEO, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @SDL_INIT_VIDEO, align 4
  %24 = call i32 @SDL_InitSubSystem(i32 %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = call i8* (...) @SDL_GetError()
  %28 = call i32 @FCEUD_PrintError(i8* %27)
  store i32 0, i32* %2, align 4
  br label %228

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i32, i32* @inited, align 4
  %32 = or i32 %31, 1
  store i32 %32, i32* @inited, align 4
  %33 = call i32 @SDL_ShowCursor(i32 0)
  %34 = load double, double* @erendline, align 8
  %35 = load double, double* @srendline, align 8
  %36 = fsub double %34, %35
  %37 = fadd double %36, 1.000000e+00
  store double %37, double* @tlines, align 8
  %38 = call %struct.TYPE_12__* (...) @SDL_GetVideoInfo()
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %4, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load i32, i32* @SDL_HWSURFACE, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %30
  %48 = load i64, i64* @_fullscreen, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @SDL_FULLSCREEN, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* @SDL_HWPALETTE, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i64, i64* @_doublebuf, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SDL_HWSURFACE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @SDL_DOUBLEBUF, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %60, %54
  %70 = load i64, i64* @_fullscreen, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %111

72:                                               ; preds = %69
  %73 = load i32, i32* @_bpp, align 4
  store i32 %73, i32* %6, align 4
  %74 = load double, double* @_xscalefs, align 8
  store double %74, double* @exs, align 8
  %75 = load double, double* @_yscalefs, align 8
  store double %75, double* @eys, align 8
  %76 = load i64, i64* @_efxfs, align 8
  store i64 %76, i64* @eefx, align 8
  %77 = load double, double* @_xres, align 8
  %78 = load double, double* @NWIDTH, align 8
  %79 = load double, double* @exs, align 8
  %80 = fmul double %78, %79
  %81 = fcmp olt double %77, %80
  br i1 %81, label %85, label %82

82:                                               ; preds = %72
  %83 = load double, double* @exs, align 8
  %84 = fcmp ole double %83, 1.000000e-02
  br i1 %84, label %85, label %88

85:                                               ; preds = %82, %72
  %86 = call i32 @FCEUD_PrintError(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %87 = call i32 (...) @KillVideo()
  store i32 0, i32* %2, align 4
  br label %228

88:                                               ; preds = %82
  %89 = load double, double* @_yres, align 8
  %90 = load double, double* @tlines, align 8
  %91 = load double, double* @eys, align 8
  %92 = fmul double %90, %91
  %93 = fcmp olt double %89, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = load double, double* @eys, align 8
  %96 = fcmp ole double %95, 1.000000e-02
  br i1 %96, label %97, label %100

97:                                               ; preds = %94, %88
  %98 = call i32 @FCEUD_PrintError(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %99 = call i32 (...) @KillVideo()
  store i32 0, i32* %2, align 4
  br label %228

100:                                              ; preds = %94
  %101 = load double, double* @_xres, align 8
  %102 = load double, double* @_yres, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call %struct.TYPE_14__* @SDL_SetVideoMode(double %101, double %102, i32 %103, i32 %104)
  store %struct.TYPE_14__* %105, %struct.TYPE_14__** @screen, align 8
  %106 = icmp ne %struct.TYPE_14__* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %100
  %108 = call i8* (...) @SDL_GetError()
  %109 = call i32 @FCEUD_PrintError(i8* %108)
  store i32 0, i32* %2, align 4
  br label %228

110:                                              ; preds = %100
  br label %139

111:                                              ; preds = %69
  store i32 0, i32* %7, align 4
  %112 = load double, double* @_xscale, align 8
  store double %112, double* @exs, align 8
  %113 = load double, double* @_yscale, align 8
  store double %113, double* @eys, align 8
  %114 = load i64, i64* @_efx, align 8
  store i64 %114, i64* @eefx, align 8
  %115 = load i32, i32* @sponge, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %111
  store double 2.000000e+00, double* @eys, align 8
  store double 2.000000e+00, double* @exs, align 8
  %118 = load i32, i32* @sponge, align 4
  %119 = icmp sge i32 %118, 3
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store double 3.000000e+00, double* @eys, align 8
  store double 3.000000e+00, double* @exs, align 8
  br label %121

121:                                              ; preds = %120, %117
  store i64 0, i64* @eefx, align 8
  %122 = load i32, i32* @sponge, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* @sponge, align 4
  %126 = icmp eq i32 %125, 3
  br i1 %126, label %127, label %128

127:                                              ; preds = %124, %121
  store i32 32, i32* %7, align 4
  br label %128

128:                                              ; preds = %127, %124
  br label %129

129:                                              ; preds = %128, %111
  %130 = load double, double* @NWIDTH, align 8
  %131 = load double, double* @exs, align 8
  %132 = fmul double %130, %131
  %133 = load double, double* @tlines, align 8
  %134 = load double, double* @eys, align 8
  %135 = fmul double %133, %134
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %5, align 4
  %138 = call %struct.TYPE_14__* @SDL_SetVideoMode(double %132, double %135, i32 %136, i32 %137)
  store %struct.TYPE_14__* %138, %struct.TYPE_14__** @screen, align 8
  br label %139

139:                                              ; preds = %129, %110
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** @screen, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* @curbpp, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** @screen, align 8
  %146 = icmp ne %struct.TYPE_14__* %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %139
  %148 = call i8* (...) @SDL_GetError()
  %149 = call i32 @FCEUD_PrintError(i8* %148)
  %150 = call i32 (...) @KillVideo()
  store i32 0, i32* %2, align 4
  br label %228

151:                                              ; preds = %139
  store i32 1, i32* @inited, align 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** @screen, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** @screen, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** @screen, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i64, i64* @_fullscreen, align 8
  %164 = icmp ne i64 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %167 = call i32 (i8*, ...) @FCEU_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %154, i32 %157, i32 %162, i8* %166)
  %168 = load i32, i32* @curbpp, align 4
  %169 = icmp ne i32 %168, 16
  br i1 %169, label %170, label %183

170:                                              ; preds = %151
  %171 = load i32, i32* @curbpp, align 4
  %172 = icmp ne i32 %171, 24
  br i1 %172, label %173, label %183

173:                                              ; preds = %170
  %174 = load i32, i32* @curbpp, align 4
  %175 = icmp ne i32 %174, 8
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load i32, i32* @curbpp, align 4
  %178 = icmp ne i32 %177, 32
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i32, i32* @curbpp, align 4
  %181 = call i32 (i8*, ...) @FCEU_printf(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.6, i64 0, i64 0), i32 %180)
  %182 = call i32 (...) @KillVideo()
  store i32 0, i32* %2, align 4
  br label %228

183:                                              ; preds = %176, %173, %170, %151
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %196

188:                                              ; preds = %183
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @SDL_WM_SetCaption(i8* %191, i8* %194)
  br label %198

196:                                              ; preds = %183
  %197 = call i32 @SDL_WM_SetCaption(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %188
  %199 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fceu_playicon, i32 0, i32 0), align 8
  %200 = inttoptr i64 %199 to i8*
  %201 = call i32 @SDL_CreateRGBSurfaceFrom(i8* %200, i32 32, i32 32, i32 24, i32 96, i32 16711680, i32 65280, i32 255, i32 0)
  store i32 %201, i32* @IconSurface, align 4
  %202 = load i32, i32* @IconSurface, align 4
  %203 = call i32 @SDL_WM_SetIcon(i32 %202, i32 0)
  store i32 1, i32* @paletterefresh, align 4
  %204 = load i32, i32* @curbpp, align 4
  %205 = icmp sgt i32 %204, 8
  br i1 %205, label %206, label %227

206:                                              ; preds = %198
  %207 = load i32, i32* @curbpp, align 4
  %208 = ashr i32 %207, 3
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** @screen, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** @screen, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** @screen, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i64, i64* @eefx, align 8
  %225 = load i32, i32* @sponge, align 4
  %226 = call i32 @InitBlitToHigh(i32 %208, i32 %213, i32 %218, i32 %223, i64 %224, i32 %225)
  br label %227

227:                                              ; preds = %206, %198
  store i32 1, i32* %2, align 4
  br label %228

228:                                              ; preds = %227, %179, %147, %107, %97, %85, %26
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local i32 @FCEUI_printf(i8*) #1

declare dso_local i32 @FCEUI_GetCurrentVidSystem(double*, double*) #1

declare dso_local i32 @SDL_WasInit(i32) #1

declare dso_local i32 @SDL_InitSubSystem(i32) #1

declare dso_local i32 @FCEUD_PrintError(i8*) #1

declare dso_local i8* @SDL_GetError(...) #1

declare dso_local i32 @SDL_ShowCursor(i32) #1

declare dso_local %struct.TYPE_12__* @SDL_GetVideoInfo(...) #1

declare dso_local i32 @KillVideo(...) #1

declare dso_local %struct.TYPE_14__* @SDL_SetVideoMode(double, double, i32, i32) #1

declare dso_local i32 @FCEU_printf(i8*, ...) #1

declare dso_local i32 @SDL_WM_SetCaption(i8*, i8*) #1

declare dso_local i32 @SDL_CreateRGBSurfaceFrom(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SDL_WM_SetIcon(i32, i32) #1

declare dso_local i32 @InitBlitToHigh(i32, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
