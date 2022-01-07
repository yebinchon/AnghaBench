; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_glx_context.c_chooseFBConfig.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_glx_context.c_chooseFBConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@GL_TRUE = common dso_local global i8* null, align 8
@_glfw = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@GLX_VENDOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Chromium\00", align 1
@GL_FALSE = common dso_local global i8* null, align 8
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"GLX: No GLXFBConfigs returned\00", align 1
@GLX_VISUAL_ID = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_14__*, i32*)* @chooseFBConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @chooseFBConfig(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load i8*, i8** @GL_TRUE, align 8
  store i8* %16, i8** %13, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 1, i32 1), align 4
  %18 = load i32, i32* @GLX_VENDOR, align 4
  %19 = call i8* @_glfw_glXGetClientString(i32 %17, i32 %18)
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i8*, i8** @GL_FALSE, align 8
  store i8* %24, i8** %13, align 8
  br label %25

25:                                               ; preds = %23, %2
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 1, i32 1), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 1, i32 0), align 8
  %28 = call i32* @_glfw_glXGetFBConfigs(i32 %26, i32 %27, i32* %10)
  store i32* %28, i32** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %33 = call i32 @_glfwInputError(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i8*, i8** @GL_FALSE, align 8
  store i8* %34, i8** %3, align 8
  br label %205

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.TYPE_14__* @calloc(i32 %36, i32 72)
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %177, %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %180

42:                                               ; preds = %38
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %14, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i64 %50
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %15, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @GLX_VISUAL_ID, align 4
  %54 = call i32 @getFBConfigAttrib(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %42
  br label %177

57:                                               ; preds = %42
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @GLX_RENDER_TYPE, align 4
  %60 = call i32 @getFBConfigAttrib(i32 %58, i32 %59)
  %61 = load i32, i32* @GLX_RGBA_BIT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %177

65:                                               ; preds = %57
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @GLX_DRAWABLE_TYPE, align 4
  %68 = call i32 @getFBConfigAttrib(i32 %66, i32 %67)
  %69 = load i32, i32* @GLX_WINDOW_BIT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = load i8*, i8** %13, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %177

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %65
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @GLX_RED_SIZE, align 4
  %80 = call i32 @getFBConfigAttrib(i32 %78, i32 %79)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @GLX_GREEN_SIZE, align 4
  %85 = call i32 @getFBConfigAttrib(i32 %83, i32 %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @GLX_BLUE_SIZE, align 4
  %90 = call i32 @getFBConfigAttrib(i32 %88, i32 %89)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @GLX_ALPHA_SIZE, align 4
  %95 = call i32 @getFBConfigAttrib(i32 %93, i32 %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @GLX_DEPTH_SIZE, align 4
  %100 = call i32 @getFBConfigAttrib(i32 %98, i32 %99)
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @GLX_STENCIL_SIZE, align 4
  %105 = call i32 @getFBConfigAttrib(i32 %103, i32 %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @GLX_ACCUM_RED_SIZE, align 4
  %110 = call i32 @getFBConfigAttrib(i32 %108, i32 %109)
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @GLX_ACCUM_GREEN_SIZE, align 4
  %115 = call i32 @getFBConfigAttrib(i32 %113, i32 %114)
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* @GLX_ACCUM_BLUE_SIZE, align 4
  %120 = call i32 @getFBConfigAttrib(i32 %118, i32 %119)
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 8
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @GLX_ACCUM_ALPHA_SIZE, align 4
  %125 = call i32 @getFBConfigAttrib(i32 %123, i32 %124)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 9
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @GLX_AUX_BUFFERS, align 4
  %130 = call i32 @getFBConfigAttrib(i32 %128, i32 %129)
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 10
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* @GLX_STEREO, align 4
  %135 = call i32 @getFBConfigAttrib(i32 %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %77
  %138 = load i8*, i8** @GL_TRUE, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 15
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %137, %77
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @GLX_DOUBLEBUFFER, align 4
  %144 = call i32 @getFBConfigAttrib(i32 %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i8*, i8** @GL_TRUE, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 14
  store i8* %147, i8** %149, align 8
  br label %150

150:                                              ; preds = %146, %141
  %151 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 2), align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @GLX_SAMPLES, align 4
  %156 = call i32 @getFBConfigAttrib(i32 %154, i32 %155)
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 11
  store i32 %156, i32* %158, align 4
  br label %159

159:                                              ; preds = %153, %150
  %160 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 1), align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @_glfw, i32 0, i32 0, i32 0), align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %162, %159
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @GLX_FRAMEBUFFER_SRGB_CAPABLE_ARB, align 4
  %168 = call i32 @getFBConfigAttrib(i32 %166, i32 %167)
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 12
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %165, %162
  %172 = load i32, i32* %14, align 4
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 13
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %171, %75, %64, %56
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %9, align 4
  br label %38

180:                                              ; preds = %38
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %183 = load i32, i32* %11, align 4
  %184 = call %struct.TYPE_14__* @_glfwChooseFBConfig(%struct.TYPE_14__* %181, %struct.TYPE_14__* %182, i32 %183)
  store %struct.TYPE_14__* %184, %struct.TYPE_14__** %8, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %186 = icmp ne %struct.TYPE_14__* %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %180
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 13
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %5, align 8
  store i32 %190, i32* %191, align 4
  br label %192

192:                                              ; preds = %187, %180
  %193 = load i32*, i32** %6, align 8
  %194 = call i32 @XFree(i32* %193)
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %196 = call i32 @free(%struct.TYPE_14__* %195)
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %198 = icmp ne %struct.TYPE_14__* %197, null
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = load i8*, i8** @GL_TRUE, align 8
  br label %203

201:                                              ; preds = %192
  %202 = load i8*, i8** @GL_FALSE, align 8
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i8* [ %200, %199 ], [ %202, %201 ]
  store i8* %204, i8** %3, align 8
  br label %205

205:                                              ; preds = %203, %31
  %206 = load i8*, i8** %3, align 8
  ret i8* %206
}

declare dso_local i8* @_glfw_glXGetClientString(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @_glfw_glXGetFBConfigs(i32, i32, i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local %struct.TYPE_14__* @calloc(i32, i32) #1

declare dso_local i32 @getFBConfigAttrib(i32, i32) #1

declare dso_local %struct.TYPE_14__* @_glfwChooseFBConfig(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @XFree(i32*) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
