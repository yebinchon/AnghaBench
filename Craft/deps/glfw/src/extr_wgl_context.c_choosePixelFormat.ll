; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wgl_context.c_choosePixelFormat.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wgl_context.c_choosePixelFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_17__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@WGL_NUMBER_PIXEL_FORMATS_ARB = common dso_local global i32 0, align 4
@WGL_SUPPORT_OPENGL_ARB = common dso_local global i32 0, align 4
@WGL_DRAW_TO_WINDOW_ARB = common dso_local global i32 0, align 4
@WGL_PIXEL_TYPE_ARB = common dso_local global i32 0, align 4
@WGL_TYPE_RGBA_ARB = common dso_local global i32 0, align 4
@WGL_ACCELERATION_ARB = common dso_local global i32 0, align 4
@WGL_NO_ACCELERATION_ARB = common dso_local global i32 0, align 4
@WGL_RED_BITS_ARB = common dso_local global i32 0, align 4
@WGL_GREEN_BITS_ARB = common dso_local global i32 0, align 4
@WGL_BLUE_BITS_ARB = common dso_local global i32 0, align 4
@WGL_ALPHA_BITS_ARB = common dso_local global i32 0, align 4
@WGL_DEPTH_BITS_ARB = common dso_local global i32 0, align 4
@WGL_STENCIL_BITS_ARB = common dso_local global i32 0, align 4
@WGL_ACCUM_RED_BITS_ARB = common dso_local global i32 0, align 4
@WGL_ACCUM_GREEN_BITS_ARB = common dso_local global i32 0, align 4
@WGL_ACCUM_BLUE_BITS_ARB = common dso_local global i32 0, align 4
@WGL_ACCUM_ALPHA_BITS_ARB = common dso_local global i32 0, align 4
@WGL_AUX_BUFFERS_ARB = common dso_local global i32 0, align 4
@WGL_STEREO_ARB = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i8* null, align 8
@WGL_DOUBLE_BUFFER_ARB = common dso_local global i32 0, align 4
@WGL_SAMPLES_ARB = common dso_local global i32 0, align 4
@WGL_FRAMEBUFFER_SRGB_CAPABLE_ARB = common dso_local global i32 0, align 4
@PFD_DRAW_TO_WINDOW = common dso_local global i32 0, align 4
@PFD_SUPPORT_OPENGL = common dso_local global i32 0, align 4
@PFD_GENERIC_ACCELERATED = common dso_local global i32 0, align 4
@PFD_GENERIC_FORMAT = common dso_local global i32 0, align 4
@PFD_TYPE_RGBA = common dso_local global i64 0, align 8
@PFD_STEREO = common dso_local global i32 0, align 4
@PFD_DOUBLEBUFFER = common dso_local global i32 0, align 4
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"WGL: The driver does not appear to support OpenGL\00", align 1
@GL_FALSE = common dso_local global i8* null, align 8
@GLFW_FORMAT_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"WGL: Failed to find a suitable pixel format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_15__*, %struct.TYPE_16__*, i32*)* @choosePixelFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @choosePixelFormat(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = load i32, i32* @WGL_NUMBER_PIXEL_FORMATS_ARB, align 4
  %24 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %22, i32 1, i32 %23)
  store i32 %24, i32* %11, align 4
  br label %31

25:                                               ; preds = %3
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @DescribePixelFormat(i32 %29, i32 1, i32 64, %struct.TYPE_17__* null)
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %25, %21
  %32 = load i32, i32* %11, align 4
  %33 = call %struct.TYPE_16__* @calloc(i32 %32, i32 80)
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %314, %31
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %317

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %13, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i64 %43
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %14, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %202

50:                                               ; preds = %38
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @WGL_SUPPORT_OPENGL_ARB, align 4
  %54 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @WGL_DRAW_TO_WINDOW_ARB, align 4
  %60 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %57, i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56, %50
  br label %314

63:                                               ; preds = %56
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @WGL_PIXEL_TYPE_ARB, align 4
  %67 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %64, i32 %65, i32 %66)
  %68 = load i32, i32* @WGL_TYPE_RGBA_ARB, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %314

71:                                               ; preds = %63
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @WGL_ACCELERATION_ARB, align 4
  %75 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %72, i32 %73, i32 %74)
  %76 = load i32, i32* @WGL_NO_ACCELERATION_ARB, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %314

79:                                               ; preds = %71
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @WGL_RED_BITS_ARB, align 4
  %83 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %80, i32 %81, i32 %82)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @WGL_GREEN_BITS_ARB, align 4
  %89 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %86, i32 %87, i32 %88)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @WGL_BLUE_BITS_ARB, align 4
  %95 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %92, i32 %93, i32 %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @WGL_ALPHA_BITS_ARB, align 4
  %101 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %98, i32 %99, i32 %100)
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @WGL_DEPTH_BITS_ARB, align 4
  %107 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %104, i32 %105, i32 %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @WGL_STENCIL_BITS_ARB, align 4
  %113 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %110, i32 %111, i32 %112)
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @WGL_ACCUM_RED_BITS_ARB, align 4
  %119 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %116, i32 %117, i32 %118)
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @WGL_ACCUM_GREEN_BITS_ARB, align 4
  %125 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %122, i32 %123, i32 %124)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @WGL_ACCUM_BLUE_BITS_ARB, align 4
  %131 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %128, i32 %129, i32 %130)
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 8
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @WGL_ACCUM_ALPHA_BITS_ARB, align 4
  %137 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %134, i32 %135, i32 %136)
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 9
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* @WGL_AUX_BUFFERS_ARB, align 4
  %143 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %140, i32 %141, i32 %142)
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 10
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* @WGL_STEREO_ARB, align 4
  %149 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %146, i32 %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %79
  %152 = load i8*, i8** @GL_TRUE, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 14
  store i8* %152, i8** %154, align 8
  br label %155

155:                                              ; preds = %151, %79
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @WGL_DOUBLE_BUFFER_ARB, align 4
  %159 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %156, i32 %157, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i8*, i8** @GL_TRUE, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 13
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %161, %155
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %165
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @WGL_SAMPLES_ARB, align 4
  %175 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %172, i32 %173, i32 %174)
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 11
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %171, %165
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %178
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %184, %178
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* @WGL_FRAMEBUFFER_SRGB_CAPABLE_ARB, align 4
  %194 = call i32 @getPixelFormatAttrib(%struct.TYPE_15__* %191, i32 %192, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = load i8*, i8** @GL_TRUE, align 8
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 15
  store i8* %197, i8** %199, align 8
  br label %200

200:                                              ; preds = %196, %190
  br label %201

201:                                              ; preds = %200, %184
  br label %308

202:                                              ; preds = %38
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %13, align 4
  %208 = call i32 @DescribePixelFormat(i32 %206, i32 %207, i32 64, %struct.TYPE_17__* %15)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %202
  br label %314

211:                                              ; preds = %202
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @PFD_DRAW_TO_WINDOW, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @PFD_SUPPORT_OPENGL, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %217, %211
  br label %314

224:                                              ; preds = %217
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @PFD_GENERIC_ACCELERATED, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %237, label %230

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @PFD_GENERIC_FORMAT, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %230
  br label %314

237:                                              ; preds = %230, %224
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @PFD_TYPE_RGBA, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  br label %314

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 2
  store i32 %253, i32* %255, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 5
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 3
  store i32 %257, i32* %259, align 4
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 4
  store i32 %261, i32* %263, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 7
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 5
  store i32 %265, i32* %267, align 4
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 8
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 6
  store i32 %269, i32* %271, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 9
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 7
  store i32 %273, i32* %275, align 4
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 10
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 8
  store i32 %277, i32* %279, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 11
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 9
  store i32 %281, i32* %283, align 4
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 12
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 10
  store i32 %285, i32* %287, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @PFD_STEREO, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %243
  %294 = load i8*, i8** @GL_TRUE, align 8
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 14
  store i8* %294, i8** %296, align 8
  br label %297

297:                                              ; preds = %293, %243
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @PFD_DOUBLEBUFFER, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %297
  %304 = load i8*, i8** @GL_TRUE, align 8
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 13
  store i8* %304, i8** %306, align 8
  br label %307

307:                                              ; preds = %303, %297
  br label %308

308:                                              ; preds = %307, %201
  %309 = load i32, i32* %13, align 4
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 12
  store i32 %309, i32* %311, align 8
  %312 = load i32, i32* %12, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %12, align 4
  br label %314

314:                                              ; preds = %308, %242, %236, %223, %210, %78, %70, %62
  %315 = load i32, i32* %10, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %10, align 4
  br label %34

317:                                              ; preds = %34
  %318 = load i32, i32* %12, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %326, label %320

320:                                              ; preds = %317
  %321 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %322 = call i32 @_glfwInputError(i32 %321, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %324 = call i32 @free(%struct.TYPE_16__* %323)
  %325 = load i8*, i8** @GL_FALSE, align 8
  store i8* %325, i8** %4, align 8
  br label %347

326:                                              ; preds = %317
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %329 = load i32, i32* %12, align 4
  %330 = call %struct.TYPE_16__* @_glfwChooseFBConfig(%struct.TYPE_16__* %327, %struct.TYPE_16__* %328, i32 %329)
  store %struct.TYPE_16__* %330, %struct.TYPE_16__** %9, align 8
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %332 = icmp ne %struct.TYPE_16__* %331, null
  br i1 %332, label %339, label %333

333:                                              ; preds = %326
  %334 = load i32, i32* @GLFW_FORMAT_UNAVAILABLE, align 4
  %335 = call i32 @_glfwInputError(i32 %334, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %337 = call i32 @free(%struct.TYPE_16__* %336)
  %338 = load i8*, i8** @GL_FALSE, align 8
  store i8* %338, i8** %4, align 8
  br label %347

339:                                              ; preds = %326
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 12
  %342 = load i32, i32* %341, align 8
  %343 = load i32*, i32** %7, align 8
  store i32 %342, i32* %343, align 4
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %345 = call i32 @free(%struct.TYPE_16__* %344)
  %346 = load i8*, i8** @GL_TRUE, align 8
  store i8* %346, i8** %4, align 8
  br label %347

347:                                              ; preds = %339, %333, %320
  %348 = load i8*, i8** %4, align 8
  ret i8* %348
}

declare dso_local i32 @getPixelFormatAttrib(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @DescribePixelFormat(i32, i32, i32, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @calloc(i32, i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @_glfwChooseFBConfig(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
