; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_particles.c_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_particles.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, float, i32, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to initialize GLFW\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"fh\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@GLFW_RED_BITS = common dso_local global i32 0, align 4
@GLFW_GREEN_BITS = common dso_local global i32 0, align 4
@GLFW_BLUE_BITS = common dso_local global i32 0, align 4
@GLFW_REFRESH_RATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Particle Engine\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to create GLFW window\0A\00", align 1
@GLFW_CURSOR = common dso_local global i32 0, align 4
@GLFW_CURSOR_DISABLED = common dso_local global i32 0, align 4
@key_callback = common dso_local global i32 0, align 4
@particle_tex_id = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_UNPACK_ALIGNMENT = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_LUMINANCE = common dso_local global i32 0, align 4
@P_TEX_WIDTH = common dso_local global i32 0, align 4
@P_TEX_HEIGHT = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@particle_texture = common dso_local global i32 0, align 4
@floor_tex_id = common dso_local global i32 0, align 4
@GL_REPEAT = common dso_local global i32 0, align 4
@F_TEX_WIDTH = common dso_local global i32 0, align 4
@F_TEX_HEIGHT = common dso_local global i32 0, align 4
@floor_texture = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"GL_EXT_separate_specular_color\00", align 1
@GL_LIGHT_MODEL_COLOR_CONTROL_EXT = common dso_local global i32 0, align 4
@GL_SEPARATE_SPECULAR_COLOR_EXT = common dso_local global i32 0, align 4
@GL_FRONT_AND_BACK = common dso_local global i32 0, align 4
@GL_FILL = common dso_local global i32 0, align 4
@wireframe = common dso_local global i64 0, align 8
@thread_sync = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@mtx_timed = common dso_local global i32 0, align 4
@physics_thread_main = common dso_local global i32 0, align 4
@thrd_success = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %11, align 8
  %13 = call i32 (...) @glfwInit()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  %19 = call i32 @exit(i32 %18) #3
  unreachable

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %34, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %34 [
    i32 102, label %28
    i32 104, label %30
  ]

28:                                               ; preds = %26
  %29 = call i32* (...) @glfwGetPrimaryMonitor()
  store i32* %29, i32** %11, align 8
  br label %34

30:                                               ; preds = %26
  %31 = call i32 (...) @usage()
  %32 = load i32, i32* @EXIT_SUCCESS, align 4
  %33 = call i32 @exit(i32 %32) #3
  unreachable

34:                                               ; preds = %26, %28
  br label %21

35:                                               ; preds = %21
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %67

38:                                               ; preds = %35
  %39 = load i32*, i32** %11, align 8
  %40 = call %struct.TYPE_4__* @glfwGetVideoMode(i32* %39)
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %12, align 8
  %41 = load i32, i32* @GLFW_RED_BITS, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @glfwWindowHint(i32 %41, i32 %44)
  %46 = load i32, i32* @GLFW_GREEN_BITS, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @glfwWindowHint(i32 %46, i32 %49)
  %51 = load i32, i32* @GLFW_BLUE_BITS, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @glfwWindowHint(i32 %51, i32 %54)
  %56 = load i32, i32* @GLFW_REFRESH_RATE, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @glfwWindowHint(i32 %56, i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %7, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  br label %68

67:                                               ; preds = %35
  store i32 640, i32* %7, align 4
  store i32 480, i32* %8, align 4
  br label %68

68:                                               ; preds = %67, %38
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = call i32* @glfwCreateWindow(i32 %69, i32 %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %71, i32* null)
  store i32* %72, i32** %10, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 @fprintf(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %78 = call i32 (...) @glfwTerminate()
  %79 = load i32, i32* @EXIT_FAILURE, align 4
  %80 = call i32 @exit(i32 %79) #3
  unreachable

81:                                               ; preds = %68
  %82 = load i32*, i32** %11, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* @GLFW_CURSOR, align 4
  %87 = load i32, i32* @GLFW_CURSOR_DISABLED, align 4
  %88 = call i32 @glfwSetInputMode(i32* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %81
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @glfwMakeContextCurrent(i32* %90)
  %92 = call i32 @glfwSwapInterval(i32 1)
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @glfwSetFramebufferSizeCallback(i32* %93, i32 (i32*, i32, i32)* @resize_callback)
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* @key_callback, align 4
  %97 = call i32 @glfwSetKeyCallback(i32* %95, i32 %96)
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @glfwGetFramebufferSize(i32* %98, i32* %7, i32* %8)
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @resize_callback(i32* %100, i32 %101, i32 %102)
  %104 = call i32 @glGenTextures(i32 1, i32* @particle_tex_id)
  %105 = load i32, i32* @GL_TEXTURE_2D, align 4
  %106 = load i32, i32* @particle_tex_id, align 4
  %107 = call i32 @glBindTexture(i32 %105, i32 %106)
  %108 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %109 = call i32 @glPixelStorei(i32 %108, i32 1)
  %110 = load i32, i32* @GL_TEXTURE_2D, align 4
  %111 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %112 = load i32, i32* @GL_CLAMP, align 4
  %113 = call i32 @glTexParameteri(i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* @GL_TEXTURE_2D, align 4
  %115 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %116 = load i32, i32* @GL_CLAMP, align 4
  %117 = call i32 @glTexParameteri(i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* @GL_TEXTURE_2D, align 4
  %119 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %120 = load i32, i32* @GL_LINEAR, align 4
  %121 = call i32 @glTexParameteri(i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* @GL_TEXTURE_2D, align 4
  %123 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %124 = load i32, i32* @GL_LINEAR, align 4
  %125 = call i32 @glTexParameteri(i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* @GL_TEXTURE_2D, align 4
  %127 = load i32, i32* @GL_LUMINANCE, align 4
  %128 = load i32, i32* @P_TEX_WIDTH, align 4
  %129 = load i32, i32* @P_TEX_HEIGHT, align 4
  %130 = load i32, i32* @GL_LUMINANCE, align 4
  %131 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %132 = load i32, i32* @particle_texture, align 4
  %133 = call i32 @glTexImage2D(i32 %126, i32 0, i32 %127, i32 %128, i32 %129, i32 0, i32 %130, i32 %131, i32 %132)
  %134 = call i32 @glGenTextures(i32 1, i32* @floor_tex_id)
  %135 = load i32, i32* @GL_TEXTURE_2D, align 4
  %136 = load i32, i32* @floor_tex_id, align 4
  %137 = call i32 @glBindTexture(i32 %135, i32 %136)
  %138 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %139 = call i32 @glPixelStorei(i32 %138, i32 1)
  %140 = load i32, i32* @GL_TEXTURE_2D, align 4
  %141 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %142 = load i32, i32* @GL_REPEAT, align 4
  %143 = call i32 @glTexParameteri(i32 %140, i32 %141, i32 %142)
  %144 = load i32, i32* @GL_TEXTURE_2D, align 4
  %145 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %146 = load i32, i32* @GL_REPEAT, align 4
  %147 = call i32 @glTexParameteri(i32 %144, i32 %145, i32 %146)
  %148 = load i32, i32* @GL_TEXTURE_2D, align 4
  %149 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %150 = load i32, i32* @GL_LINEAR, align 4
  %151 = call i32 @glTexParameteri(i32 %148, i32 %149, i32 %150)
  %152 = load i32, i32* @GL_TEXTURE_2D, align 4
  %153 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %154 = load i32, i32* @GL_LINEAR, align 4
  %155 = call i32 @glTexParameteri(i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* @GL_TEXTURE_2D, align 4
  %157 = load i32, i32* @GL_LUMINANCE, align 4
  %158 = load i32, i32* @F_TEX_WIDTH, align 4
  %159 = load i32, i32* @F_TEX_HEIGHT, align 4
  %160 = load i32, i32* @GL_LUMINANCE, align 4
  %161 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %162 = load i32, i32* @floor_texture, align 4
  %163 = call i32 @glTexImage2D(i32 %156, i32 0, i32 %157, i32 %158, i32 %159, i32 0, i32 %160, i32 %161, i32 %162)
  %164 = call i64 @glfwExtensionSupported(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %89
  %167 = load i32, i32* @GL_LIGHT_MODEL_COLOR_CONTROL_EXT, align 4
  %168 = load i32, i32* @GL_SEPARATE_SPECULAR_COLOR_EXT, align 4
  %169 = call i32 @glLightModeli(i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %166, %89
  %171 = load i32, i32* @GL_FRONT_AND_BACK, align 4
  %172 = load i32, i32* @GL_FILL, align 4
  %173 = call i32 @glPolygonMode(i32 %171, i32 %172)
  store i64 0, i64* @wireframe, align 8
  store double 0.000000e+00, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_sync, i32 0, i32 0), align 8
  store float 0x3F50624DE0000000, float* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_sync, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_sync, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_sync, i32 0, i32 5), align 8
  %174 = load i32, i32* @mtx_timed, align 4
  %175 = call i32 @mtx_init(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_sync, i32 0, i32 4), i32 %174)
  %176 = call i32 @cnd_init(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_sync, i32 0, i32 3))
  %177 = call i32 @cnd_init(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_sync, i32 0, i32 2))
  %178 = load i32, i32* @physics_thread_main, align 4
  %179 = load i32*, i32** %10, align 8
  %180 = call i64 @thrd_create(i32* %9, i32 %178, i32* %179)
  %181 = load i64, i64* @thrd_success, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %170
  %184 = call i32 (...) @glfwTerminate()
  %185 = load i32, i32* @EXIT_FAILURE, align 4
  %186 = call i32 @exit(i32 %185) #3
  unreachable

187:                                              ; preds = %170
  %188 = call i32 @glfwSetTime(double 0.000000e+00)
  br label %189

189:                                              ; preds = %194, %187
  %190 = load i32*, i32** %10, align 8
  %191 = call i32 @glfwWindowShouldClose(i32* %190)
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  br i1 %193, label %194, label %201

194:                                              ; preds = %189
  %195 = load i32*, i32** %10, align 8
  %196 = call i32 (...) @glfwGetTime()
  %197 = call i32 @draw_scene(i32* %195, i32 %196)
  %198 = load i32*, i32** %10, align 8
  %199 = call i32 @glfwSwapBuffers(i32* %198)
  %200 = call i32 (...) @glfwPollEvents()
  br label %189

201:                                              ; preds = %189
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @thrd_join(i32 %202, i32* null)
  %204 = load i32*, i32** %10, align 8
  %205 = call i32 @glfwDestroyWindow(i32* %204)
  %206 = call i32 (...) @glfwTerminate()
  %207 = load i32, i32* @EXIT_SUCCESS, align 4
  %208 = call i32 @exit(i32 %207) #3
  unreachable
}

declare dso_local i32 @glfwInit(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32* @glfwGetPrimaryMonitor(...) #1

declare dso_local i32 @usage(...) #1

declare dso_local %struct.TYPE_4__* @glfwGetVideoMode(i32*) #1

declare dso_local i32 @glfwWindowHint(i32, i32) #1

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwSetInputMode(i32*, i32, i32) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local i32 @glfwSetFramebufferSizeCallback(i32*, i32 (i32*, i32, i32)*) #1

declare dso_local i32 @resize_callback(i32*, i32, i32) #1

declare dso_local i32 @glfwSetKeyCallback(i32*, i32) #1

declare dso_local i32 @glfwGetFramebufferSize(i32*, i32*, i32*) #1

declare dso_local i32 @glGenTextures(i32, i32*) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glPixelStorei(i32, i32) #1

declare dso_local i32 @glTexParameteri(i32, i32, i32) #1

declare dso_local i32 @glTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @glfwExtensionSupported(i8*) #1

declare dso_local i32 @glLightModeli(i32, i32) #1

declare dso_local i32 @glPolygonMode(i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i32) #1

declare dso_local i32 @cnd_init(i32*) #1

declare dso_local i64 @thrd_create(i32*, i32, i32*) #1

declare dso_local i32 @glfwSetTime(double) #1

declare dso_local i32 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @draw_scene(i32*, i32) #1

declare dso_local i32 @glfwGetTime(...) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @glfwPollEvents(...) #1

declare dso_local i32 @thrd_join(i32, i32*) #1

declare dso_local i32 @glfwDestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
