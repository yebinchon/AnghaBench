; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wgl_context.c_choosePixelFormat.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wgl_context.c_choosePixelFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64, i64, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_23__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
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
@GLFW_TRUE = common dso_local global i8* null, align 8
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
@GLFW_FORMAT_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"WGL: Failed to find a suitable pixel format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_22__*)* @choosePixelFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choosePixelFormat(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @_glfw, i32 0, i32 0, i32 3), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = load i32, i32* @WGL_NUMBER_PIXEL_FORMATS_ARB, align 4
  %20 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %18, i32 1, i32 %19)
  store i32 %20, i32* %10, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DescribePixelFormat(i32 %26, i32 1, i32 64, %struct.TYPE_23__* null)
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %21, %17
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.TYPE_22__* @calloc(i32 %29, i32 80)
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %300, %28
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %303

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i64 %40
  store %struct.TYPE_22__* %41, %struct.TYPE_22__** %13, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @_glfw, i32 0, i32 0, i32 3), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %187

44:                                               ; preds = %35
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @WGL_SUPPORT_OPENGL_ARB, align 4
  %48 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %45, i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @WGL_DRAW_TO_WINDOW_ARB, align 4
  %54 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50, %44
  br label %300

57:                                               ; preds = %50
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @WGL_PIXEL_TYPE_ARB, align 4
  %61 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %58, i32 %59, i32 %60)
  %62 = load i32, i32* @WGL_TYPE_RGBA_ARB, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %300

65:                                               ; preds = %57
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @WGL_ACCELERATION_ARB, align 4
  %69 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %66, i32 %67, i32 %68)
  %70 = load i32, i32* @WGL_NO_ACCELERATION_ARB, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %300

73:                                               ; preds = %65
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @WGL_RED_BITS_ARB, align 4
  %77 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %74, i32 %75, i32 %76)
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @WGL_GREEN_BITS_ARB, align 4
  %83 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %80, i32 %81, i32 %82)
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @WGL_BLUE_BITS_ARB, align 4
  %89 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %86, i32 %87, i32 %88)
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @WGL_ALPHA_BITS_ARB, align 4
  %95 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %92, i32 %93, i32 %94)
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @WGL_DEPTH_BITS_ARB, align 4
  %101 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %98, i32 %99, i32 %100)
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @WGL_STENCIL_BITS_ARB, align 4
  %107 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %104, i32 %105, i32 %106)
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @WGL_ACCUM_RED_BITS_ARB, align 4
  %113 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %110, i32 %111, i32 %112)
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @WGL_ACCUM_GREEN_BITS_ARB, align 4
  %119 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %116, i32 %117, i32 %118)
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @WGL_ACCUM_BLUE_BITS_ARB, align 4
  %125 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %122, i32 %123, i32 %124)
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 8
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @WGL_ACCUM_ALPHA_BITS_ARB, align 4
  %131 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %128, i32 %129, i32 %130)
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 9
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @WGL_AUX_BUFFERS_ARB, align 4
  %137 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %134, i32 %135, i32 %136)
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 10
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @WGL_STEREO_ARB, align 4
  %143 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %140, i32 %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %73
  %146 = load i8*, i8** @GLFW_TRUE, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 14
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %145, %73
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @WGL_DOUBLE_BUFFER_ARB, align 4
  %153 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %150, i32 %151, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load i8*, i8** @GLFW_TRUE, align 8
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 13
  store i8* %156, i8** %158, align 8
  br label %159

159:                                              ; preds = %155, %149
  %160 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @_glfw, i32 0, i32 0, i32 2), align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @WGL_SAMPLES_ARB, align 4
  %166 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %163, i32 %164, i32 %165)
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 11
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %162, %159
  %170 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @_glfw, i32 0, i32 0, i32 1), align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @_glfw, i32 0, i32 0, i32 0), align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %172, %169
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* @WGL_FRAMEBUFFER_SRGB_CAPABLE_ARB, align 4
  %179 = call i32 @getPixelFormatAttrib(%struct.TYPE_21__* %176, i32 %177, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %175
  %182 = load i8*, i8** @GLFW_TRUE, align 8
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 15
  store i8* %182, i8** %184, align 8
  br label %185

185:                                              ; preds = %181, %175
  br label %186

186:                                              ; preds = %185, %172
  br label %294

187:                                              ; preds = %35
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @DescribePixelFormat(i32 %192, i32 %193, i32 64, %struct.TYPE_23__* %14)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %187
  br label %300

197:                                              ; preds = %187
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @PFD_DRAW_TO_WINDOW, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @PFD_SUPPORT_OPENGL, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %203, %197
  br label %300

210:                                              ; preds = %203
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @PFD_GENERIC_ACCELERATED, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @PFD_GENERIC_FORMAT, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  br label %300

223:                                              ; preds = %216, %210
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @PFD_TYPE_RGBA, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  br label %300

229:                                              ; preds = %223
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 1
  store i32 %235, i32* %237, align 4
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 3
  store i32 %243, i32* %245, align 4
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 6
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 4
  store i32 %247, i32* %249, align 8
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 7
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 5
  store i32 %251, i32* %253, align 4
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 8
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 6
  store i32 %255, i32* %257, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 9
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 7
  store i32 %259, i32* %261, align 4
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 10
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 8
  store i32 %263, i32* %265, align 8
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 11
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 9
  store i32 %267, i32* %269, align 4
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 12
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 10
  store i32 %271, i32* %273, align 8
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @PFD_STEREO, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %229
  %280 = load i8*, i8** @GLFW_TRUE, align 8
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 14
  store i8* %280, i8** %282, align 8
  br label %283

283:                                              ; preds = %279, %229
  %284 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @PFD_DOUBLEBUFFER, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %283
  %290 = load i8*, i8** @GLFW_TRUE, align 8
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 13
  store i8* %290, i8** %292, align 8
  br label %293

293:                                              ; preds = %289, %283
  br label %294

294:                                              ; preds = %293, %186
  %295 = load i32, i32* %12, align 4
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 12
  store i32 %295, i32* %297, align 8
  %298 = load i32, i32* %11, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %11, align 4
  br label %300

300:                                              ; preds = %294, %228, %222, %209, %196, %72, %64, %56
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %8, align 4
  br label %31

303:                                              ; preds = %31
  %304 = load i32, i32* %11, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %311, label %306

306:                                              ; preds = %303
  %307 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %308 = call i32 @_glfwInputError(i32 %307, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %310 = call i32 @free(%struct.TYPE_22__* %309)
  store i32 0, i32* %3, align 4
  br label %330

311:                                              ; preds = %303
  %312 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %313 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %314 = load i32, i32* %11, align 4
  %315 = call %struct.TYPE_22__* @_glfwChooseFBConfig(%struct.TYPE_22__* %312, %struct.TYPE_22__* %313, i32 %314)
  store %struct.TYPE_22__* %315, %struct.TYPE_22__** %7, align 8
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %317 = icmp ne %struct.TYPE_22__* %316, null
  br i1 %317, label %323, label %318

318:                                              ; preds = %311
  %319 = load i32, i32* @GLFW_FORMAT_UNAVAILABLE, align 4
  %320 = call i32 @_glfwInputError(i32 %319, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %322 = call i32 @free(%struct.TYPE_22__* %321)
  store i32 0, i32* %3, align 4
  br label %330

323:                                              ; preds = %311
  %324 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 12
  %326 = load i32, i32* %325, align 8
  store i32 %326, i32* %9, align 4
  %327 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %328 = call i32 @free(%struct.TYPE_22__* %327)
  %329 = load i32, i32* %9, align 4
  store i32 %329, i32* %3, align 4
  br label %330

330:                                              ; preds = %323, %318, %306
  %331 = load i32, i32* %3, align 4
  ret i32 %331
}

declare dso_local i32 @getPixelFormatAttrib(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @DescribePixelFormat(i32, i32, i32, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @calloc(i32, i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @free(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @_glfwChooseFBConfig(%struct.TYPE_22__*, %struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
