; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_glx_context.c_chooseGLXFBConfig.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_glx_context.c_chooseGLXFBConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8* }

@GLFW_TRUE = common dso_local global i8* null, align 8
@_glfw = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@GLX_VENDOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Chromium\00", align 1
@GLFW_FALSE = common dso_local global i8* null, align 8
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"GLX: No GLXFBConfigs returned\00", align 1
@GLX_RENDER_TYPE = common dso_local global i32 0, align 4
@GLX_RGBA_BIT = common dso_local global i32 0, align 4
@GLX_DRAWABLE_TYPE = common dso_local global i32 0, align 4
@GLX_WINDOW_BIT = common dso_local global i32 0, align 4
@GLX_RED_SIZE = common dso_local global i32 0, align 4
@GLX_GREEN_SIZE = common dso_local global i32 0, align 4
@GLX_BLUE_SIZE = common dso_local global i32 0, align 4
@GLX_ALPHA_SIZE = common dso_local global i32 0, align 4
@GLX_DEPTH_SIZE = common dso_local global i32 0, align 4
@GLX_STENCIL_SIZE = common dso_local global i32 0, align 4
@GLX_ACCUM_RED_SIZE = common dso_local global i32 0, align 4
@GLX_ACCUM_GREEN_SIZE = common dso_local global i32 0, align 4
@GLX_ACCUM_BLUE_SIZE = common dso_local global i32 0, align 4
@GLX_ACCUM_ALPHA_SIZE = common dso_local global i32 0, align 4
@GLX_AUX_BUFFERS = common dso_local global i32 0, align 4
@GLX_STEREO = common dso_local global i32 0, align 4
@GLX_DOUBLEBUFFER = common dso_local global i32 0, align 4
@GLX_SAMPLES = common dso_local global i32 0, align 4
@GLX_FRAMEBUFFER_SRGB_CAPABLE_ARB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_14__*, i64*)* @chooseGLXFBConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @chooseGLXFBConfig(%struct.TYPE_14__* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i64* %1, i64** %5, align 8
  %16 = load i8*, i8** @GLFW_TRUE, align 8
  store i8* %16, i8** %13, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 1, i32 1), align 4
  %18 = load i32, i32* @GLX_VENDOR, align 4
  %19 = call i8* @glXGetClientString(i32 %17, i32 %18)
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %24, i8** %13, align 8
  br label %25

25:                                               ; preds = %23, %2
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 1, i32 1), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 1, i32 0), align 8
  %28 = call i64* @glXGetFBConfigs(i32 %26, i32 %27, i32* %10)
  store i64* %28, i64** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %33 = call i32 @_glfwInputError(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i8*, i8** @GLFW_FALSE, align 8
  store i8* %34, i8** %3, align 8
  br label %196

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.TYPE_14__* @calloc(i32 %36, i32 80)
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %171, %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %174

42:                                               ; preds = %38
  %43 = load i64*, i64** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %14, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i64 %50
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %15, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i32, i32* @GLX_RENDER_TYPE, align 4
  %54 = call i32 @getGLXFBConfigAttrib(i64 %52, i32 %53)
  %55 = load i32, i32* @GLX_RGBA_BIT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %42
  br label %171

59:                                               ; preds = %42
  %60 = load i64, i64* %14, align 8
  %61 = load i32, i32* @GLX_DRAWABLE_TYPE, align 4
  %62 = call i32 @getGLXFBConfigAttrib(i64 %60, i32 %61)
  %63 = load i32, i32* @GLX_WINDOW_BIT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = load i8*, i8** %13, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %171

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %59
  %72 = load i64, i64* %14, align 8
  %73 = load i32, i32* @GLX_RED_SIZE, align 4
  %74 = call i32 @getGLXFBConfigAttrib(i64 %72, i32 %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load i32, i32* @GLX_GREEN_SIZE, align 4
  %79 = call i32 @getGLXFBConfigAttrib(i64 %77, i32 %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i64, i64* %14, align 8
  %83 = load i32, i32* @GLX_BLUE_SIZE, align 4
  %84 = call i32 @getGLXFBConfigAttrib(i64 %82, i32 %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load i32, i32* @GLX_ALPHA_SIZE, align 4
  %89 = call i32 @getGLXFBConfigAttrib(i64 %87, i32 %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load i64, i64* %14, align 8
  %93 = load i32, i32* @GLX_DEPTH_SIZE, align 4
  %94 = call i32 @getGLXFBConfigAttrib(i64 %92, i32 %93)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load i32, i32* @GLX_STENCIL_SIZE, align 4
  %99 = call i32 @getGLXFBConfigAttrib(i64 %97, i32 %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load i64, i64* %14, align 8
  %103 = load i32, i32* @GLX_ACCUM_RED_SIZE, align 4
  %104 = call i32 @getGLXFBConfigAttrib(i64 %102, i32 %103)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i32, i32* @GLX_ACCUM_GREEN_SIZE, align 4
  %109 = call i32 @getGLXFBConfigAttrib(i64 %107, i32 %108)
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 4
  %112 = load i64, i64* %14, align 8
  %113 = load i32, i32* @GLX_ACCUM_BLUE_SIZE, align 4
  %114 = call i32 @getGLXFBConfigAttrib(i64 %112, i32 %113)
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 8
  store i32 %114, i32* %116, align 8
  %117 = load i64, i64* %14, align 8
  %118 = load i32, i32* @GLX_ACCUM_ALPHA_SIZE, align 4
  %119 = call i32 @getGLXFBConfigAttrib(i64 %117, i32 %118)
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 9
  store i32 %119, i32* %121, align 4
  %122 = load i64, i64* %14, align 8
  %123 = load i32, i32* @GLX_AUX_BUFFERS, align 4
  %124 = call i32 @getGLXFBConfigAttrib(i64 %122, i32 %123)
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 10
  store i32 %124, i32* %126, align 8
  %127 = load i64, i64* %14, align 8
  %128 = load i32, i32* @GLX_STEREO, align 4
  %129 = call i32 @getGLXFBConfigAttrib(i64 %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %71
  %132 = load i8*, i8** @GLFW_TRUE, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 15
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %131, %71
  %136 = load i64, i64* %14, align 8
  %137 = load i32, i32* @GLX_DOUBLEBUFFER, align 4
  %138 = call i32 @getGLXFBConfigAttrib(i64 %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i8*, i8** @GLFW_TRUE, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 14
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %140, %135
  %145 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 2), align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load i64, i64* %14, align 8
  %149 = load i32, i32* @GLX_SAMPLES, align 4
  %150 = call i32 @getGLXFBConfigAttrib(i64 %148, i32 %149)
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 11
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %147, %144
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 1), align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 0), align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156, %153
  %160 = load i64, i64* %14, align 8
  %161 = load i32, i32* @GLX_FRAMEBUFFER_SRGB_CAPABLE_ARB, align 4
  %162 = call i32 @getGLXFBConfigAttrib(i64 %160, i32 %161)
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 12
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %159, %156
  %166 = load i64, i64* %14, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 13
  store i64 %166, i64* %168, align 8
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  br label %171

171:                                              ; preds = %165, %69, %58
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %38

174:                                              ; preds = %38
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %177 = load i32, i32* %11, align 4
  %178 = call %struct.TYPE_14__* @_glfwChooseFBConfig(%struct.TYPE_14__* %175, %struct.TYPE_14__* %176, i32 %177)
  store %struct.TYPE_14__* %178, %struct.TYPE_14__** %8, align 8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %180 = icmp ne %struct.TYPE_14__* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %174
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 13
  %184 = load i64, i64* %183, align 8
  %185 = load i64*, i64** %5, align 8
  store i64 %184, i64* %185, align 8
  br label %186

186:                                              ; preds = %181, %174
  %187 = load i64*, i64** %6, align 8
  %188 = call i32 @XFree(i64* %187)
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %190 = call i32 @free(%struct.TYPE_14__* %189)
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %192 = icmp ne %struct.TYPE_14__* %191, null
  %193 = zext i1 %192 to i32
  %194 = sext i32 %193 to i64
  %195 = inttoptr i64 %194 to i8*
  store i8* %195, i8** %3, align 8
  br label %196

196:                                              ; preds = %186, %31
  %197 = load i8*, i8** %3, align 8
  ret i8* %197
}

declare dso_local i8* @glXGetClientString(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64* @glXGetFBConfigs(i32, i32, i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local %struct.TYPE_14__* @calloc(i32, i32) #1

declare dso_local i32 @getGLXFBConfigAttrib(i64, i32) #1

declare dso_local %struct.TYPE_14__* @_glfwChooseFBConfig(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @XFree(i64*) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
