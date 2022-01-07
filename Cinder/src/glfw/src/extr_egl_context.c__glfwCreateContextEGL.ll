; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_egl_context.c__glfwCreateContextEGL.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_egl_context.c__glfwCreateContextEGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_24__ = type { i64 }

@_glfw = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EGL: API not available\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_FORMAT_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"EGL: Failed to find a suitable EGLConfig\00", align 1
@GLFW_OPENGL_ES_API = common dso_local global i64 0, align 8
@EGL_OPENGL_ES_API = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"EGL: Failed to bind OpenGL ES: %s\00", align 1
@EGL_OPENGL_API = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"EGL: Failed to bind OpenGL: %s\00", align 1
@GLFW_OPENGL_API = common dso_local global i64 0, align 8
@EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE_BIT_KHR = common dso_local global i32 0, align 4
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i64 0, align 8
@EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT_KHR = common dso_local global i32 0, align 4
@GLFW_OPENGL_COMPAT_PROFILE = common dso_local global i64 0, align 8
@EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT_KHR = common dso_local global i32 0, align 4
@EGL_CONTEXT_OPENGL_NO_ERROR_KHR = common dso_local global i32 0, align 4
@EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR = common dso_local global i32 0, align 4
@GLFW_NO_RESET_NOTIFICATION = common dso_local global i64 0, align 8
@EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_KHR = common dso_local global i32 0, align 4
@EGL_NO_RESET_NOTIFICATION_KHR = common dso_local global i32 0, align 4
@GLFW_LOSE_CONTEXT_ON_RESET = common dso_local global i64 0, align 8
@EGL_LOSE_CONTEXT_ON_RESET_KHR = common dso_local global i32 0, align 4
@EGL_CONTEXT_OPENGL_ROBUST_ACCESS_BIT_KHR = common dso_local global i32 0, align 4
@EGL_CONTEXT_MAJOR_VERSION_KHR = common dso_local global i32 0, align 4
@EGL_CONTEXT_MINOR_VERSION_KHR = common dso_local global i32 0, align 4
@EGL_CONTEXT_OPENGL_PROFILE_MASK_KHR = common dso_local global i32 0, align 4
@EGL_CONTEXT_FLAGS_KHR = common dso_local global i32 0, align 4
@EGL_NONE = common dso_local global i32 0, align 4
@EGL_CONTEXT_CLIENT_VERSION = common dso_local global i32 0, align 4
@EGL_NO_CONTEXT = common dso_local global i32 0, align 4
@GLFW_VERSION_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"EGL: Failed to create context: %s\00", align 1
@EGL_GL_COLORSPACE_KHR = common dso_local global i32 0, align 4
@EGL_GL_COLORSPACE_SRGB_KHR = common dso_local global i32 0, align 4
@_GLFW_EGL_NATIVE_WINDOW = common dso_local global i32 0, align 4
@EGL_NO_SURFACE = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"EGL: Failed to create window surface: %s\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"libGLESv1_CM.so.1\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"libGLES_CM.so.1\00", align 1
@__const._glfwCreateContextEGL.es1sonames = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@.str.8 = private unnamed_addr constant [15 x i8] c"libGLESv2.so.2\00", align 1
@__const._glfwCreateContextEGL.es2sonames = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* null], align 16
@.str.9 = private unnamed_addr constant [11 x i8] c"libGL.so.1\00", align 1
@__const._glfwCreateContextEGL.glsonames = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* null], align 16
@.str.10 = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"EGL: Failed to load client library\00", align 1
@makeContextCurrentEGL = common dso_local global i32 0, align 4
@swapBuffersEGL = common dso_local global i32 0, align 4
@swapIntervalEGL = common dso_local global i32 0, align 4
@extensionSupportedEGL = common dso_local global i32 0, align 4
@getProcAddressEGL = common dso_local global i32 0, align 4
@destroyContextEGL = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwCreateContextEGL(%struct.TYPE_23__* %0, %struct.TYPE_25__* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca [40 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca [3 x i8*], align 16
  %19 = alloca [2 x i8*], align 16
  %20 = alloca [2 x i8*], align 16
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  store i32* null, i32** %10, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1), align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %25 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %26, i32* %4, align 4
  br label %391

27:                                               ; preds = %3
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %31 = icmp ne %struct.TYPE_19__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %10, align 8
  br label %40

40:                                               ; preds = %32, %27
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %43 = call i32 @chooseEGLConfig(%struct.TYPE_25__* %41, %struct.TYPE_24__* %42, i32* %9)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @GLFW_FORMAT_UNAVAILABLE, align 4
  %47 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %48, i32* %4, align 4
  br label %391

49:                                               ; preds = %40
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i32, i32* @EGL_OPENGL_ES_API, align 4
  %57 = call i32 @eglBindAPI(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %61 = call i32 (...) @eglGetError()
  %62 = call i32 @getEGLErrorString(i32 %61)
  %63 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %64, i32* %4, align 4
  br label %391

65:                                               ; preds = %55
  br label %77

66:                                               ; preds = %49
  %67 = load i32, i32* @EGL_OPENGL_API, align 4
  %68 = call i32 @eglBindAPI(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %72 = call i32 (...) @eglGetError()
  %73 = call i32 @getEGLErrorString(i32 %72)
  %74 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %75, i32* %4, align 4
  br label %391

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %65
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 4), align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %208

80:                                               ; preds = %77
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @GLFW_OPENGL_API, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %130

86:                                               ; preds = %80
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32, i32* @EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE_BIT_KHR, align 4
  %93 = load i32, i32* %13, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %91, %86
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @GLFW_OPENGL_CORE_PROFILE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* @EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT_KHR, align 4
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %12, align 4
  br label %116

105:                                              ; preds = %95
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @GLFW_OPENGL_COMPAT_PROFILE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i32, i32* @EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT_KHR, align 4
  %113 = load i32, i32* %12, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %111, %105
  br label %116

116:                                              ; preds = %115, %101
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 3), align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* @EGL_CONTEXT_OPENGL_NO_ERROR_KHR, align 4
  %126 = load i32, i32* %13, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %124, %119
  br label %129

129:                                              ; preds = %128, %116
  br label %130

130:                                              ; preds = %129, %80
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i32, i32* @EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR, align 4
  %137 = load i32, i32* %13, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %13, align 4
  br label %139

139:                                              ; preds = %135, %130
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %169

144:                                              ; preds = %139
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @GLFW_NO_RESET_NOTIFICATION, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load i32, i32* @EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_KHR, align 4
  %152 = load i32, i32* @EGL_NO_RESET_NOTIFICATION_KHR, align 4
  %153 = call i32 @setEGLattrib(i32 %151, i32 %152)
  br label %165

154:                                              ; preds = %144
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @GLFW_LOSE_CONTEXT_ON_RESET, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load i32, i32* @EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_KHR, align 4
  %162 = load i32, i32* @EGL_LOSE_CONTEXT_ON_RESET_KHR, align 4
  %163 = call i32 @setEGLattrib(i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %154
  br label %165

165:                                              ; preds = %164, %150
  %166 = load i32, i32* @EGL_CONTEXT_OPENGL_ROBUST_ACCESS_BIT_KHR, align 4
  %167 = load i32, i32* %13, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %13, align 4
  br label %169

169:                                              ; preds = %165, %139
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 1
  br i1 %173, label %179, label %174

174:                                              ; preds = %169
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %174, %169
  %180 = load i32, i32* @EGL_CONTEXT_MAJOR_VERSION_KHR, align 4
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @setEGLattrib(i32 %180, i32 %183)
  %185 = load i32, i32* @EGL_CONTEXT_MINOR_VERSION_KHR, align 4
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @setEGLattrib(i32 %185, i32 %188)
  br label %190

190:                                              ; preds = %179, %174
  %191 = load i32, i32* %12, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i32, i32* @EGL_CONTEXT_OPENGL_PROFILE_MASK_KHR, align 4
  %195 = load i32, i32* %12, align 4
  %196 = call i32 @setEGLattrib(i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %193, %190
  %198 = load i32, i32* %13, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load i32, i32* @EGL_CONTEXT_FLAGS_KHR, align 4
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @setEGLattrib(i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %200, %197
  %205 = load i32, i32* @EGL_NONE, align 4
  %206 = load i32, i32* @EGL_NONE, align 4
  %207 = call i32 @setEGLattrib(i32 %205, i32 %206)
  br label %224

208:                                              ; preds = %77
  store i32 0, i32* %14, align 4
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %208
  %215 = load i32, i32* @EGL_CONTEXT_CLIENT_VERSION, align 4
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @setEGLattrib(i32 %215, i32 %218)
  br label %220

220:                                              ; preds = %214, %208
  %221 = load i32, i32* @EGL_NONE, align 4
  %222 = load i32, i32* @EGL_NONE, align 4
  %223 = call i32 @setEGLattrib(i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %220, %204
  %225 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1), align 4
  %226 = load i32, i32* %9, align 4
  %227 = load i32*, i32** %10, align 8
  %228 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %229 = call i32 @eglCreateContext(i32 %225, i32 %226, i32* %227, i32* %228)
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 6
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 3
  store i32 %229, i32* %233, align 4
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 6
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %224
  %242 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %243 = call i32 (...) @eglGetError()
  %244 = call i32 @getEGLErrorString(i32 %243)
  %245 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %242, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %244)
  %246 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %246, i32* %4, align 4
  br label %391

247:                                              ; preds = %224
  store i32 0, i32* %15, align 4
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %247
  %253 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 2), align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load i32, i32* @EGL_GL_COLORSPACE_KHR, align 4
  %257 = load i32, i32* @EGL_GL_COLORSPACE_SRGB_KHR, align 4
  %258 = call i32 @setEGLattrib(i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %255, %252
  br label %260

260:                                              ; preds = %259, %247
  %261 = load i32, i32* @EGL_NONE, align 4
  %262 = load i32, i32* @EGL_NONE, align 4
  %263 = call i32 @setEGLattrib(i32 %261, i32 %262)
  %264 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1), align 4
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* @_GLFW_EGL_NATIVE_WINDOW, align 4
  %267 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %268 = call i32 @eglCreateWindowSurface(i32 %264, i32 %265, i32 %266, i32* %267)
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 6
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i32 0, i32 2
  store i32 %268, i32* %272, align 4
  %273 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 6
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @EGL_NO_SURFACE, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %286

280:                                              ; preds = %260
  %281 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %282 = call i32 (...) @eglGetError()
  %283 = call i32 @getEGLErrorString(i32 %282)
  %284 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %281, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %283)
  %285 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %285, i32* %4, align 4
  br label %391

286:                                              ; preds = %260
  %287 = load i32, i32* %9, align 4
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 6
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 1
  store i32 %287, i32* %291, align 4
  %292 = bitcast [3 x i8*]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %292, i8* align 16 bitcast ([3 x i8*]* @__const._glfwCreateContextEGL.es1sonames to i8*), i64 24, i1 false)
  %293 = bitcast [2 x i8*]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %293, i8* align 16 bitcast ([2 x i8*]* @__const._glfwCreateContextEGL.es2sonames to i8*), i64 16, i1 false)
  %294 = bitcast [2 x i8*]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %294, i8* align 16 bitcast ([2 x i8*]* @__const._glfwCreateContextEGL.glsonames to i8*), i64 16, i1 false)
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %310

300:                                              ; preds = %286
  %301 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 0
  store i8** %306, i8*** %17, align 8
  br label %309

307:                                              ; preds = %300
  %308 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 0
  store i8** %308, i8*** %17, align 8
  br label %309

309:                                              ; preds = %307, %305
  br label %312

310:                                              ; preds = %286
  %311 = getelementptr inbounds [2 x i8*], [2 x i8*]* %20, i64 0, i64 0
  store i8** %311, i8*** %17, align 8
  br label %312

312:                                              ; preds = %310, %309
  store i32 0, i32* %16, align 4
  br label %313

313:                                              ; preds = %351, %312
  %314 = load i8**, i8*** %17, align 8
  %315 = load i32, i32* %16, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8*, i8** %314, i64 %316
  %318 = load i8*, i8** %317, align 8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %354

320:                                              ; preds = %313
  %321 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 8
  %322 = load i8**, i8*** %17, align 8
  %323 = load i32, i32* %16, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8*, i8** %322, i64 %324
  %326 = load i8*, i8** %325, align 8
  %327 = call i64 @strncmp(i8* %326, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 3)
  %328 = icmp eq i64 %327, 0
  %329 = zext i1 %328 to i32
  %330 = icmp ne i32 %321, %329
  br i1 %330, label %331, label %332

331:                                              ; preds = %320
  br label %351

332:                                              ; preds = %320
  %333 = load i8**, i8*** %17, align 8
  %334 = load i32, i32* %16, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8*, i8** %333, i64 %335
  %337 = load i8*, i8** %336, align 8
  %338 = call i32 @_glfw_dlopen(i8* %337)
  %339 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %340, i32 0, i32 6
  %342 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %341, i32 0, i32 0
  store i32 %338, i32* %342, align 4
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 6
  %346 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %332
  br label %354

350:                                              ; preds = %332
  br label %351

351:                                              ; preds = %350, %331
  %352 = load i32, i32* %16, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %16, align 4
  br label %313

354:                                              ; preds = %349, %313
  %355 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i32 0, i32 6
  %358 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %365, label %361

361:                                              ; preds = %354
  %362 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %363 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %362, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %364 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %364, i32* %4, align 4
  br label %391

365:                                              ; preds = %354
  %366 = load i32, i32* @makeContextCurrentEGL, align 4
  %367 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %368, i32 0, i32 5
  store i32 %366, i32* %369, align 4
  %370 = load i32, i32* @swapBuffersEGL, align 4
  %371 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %372, i32 0, i32 4
  store i32 %370, i32* %373, align 4
  %374 = load i32, i32* @swapIntervalEGL, align 4
  %375 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %376, i32 0, i32 3
  store i32 %374, i32* %377, align 4
  %378 = load i32, i32* @extensionSupportedEGL, align 4
  %379 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %380, i32 0, i32 2
  store i32 %378, i32* %381, align 4
  %382 = load i32, i32* @getProcAddressEGL, align 4
  %383 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %384, i32 0, i32 1
  store i32 %382, i32* %385, align 4
  %386 = load i32, i32* @destroyContextEGL, align 4
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %388, i32 0, i32 0
  store i32 %386, i32* %389, align 4
  %390 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %390, i32* %4, align 4
  br label %391

391:                                              ; preds = %365, %361, %280, %241, %70, %59, %45, %23
  %392 = load i32, i32* %4, align 4
  ret i32 %392
}

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i32 @chooseEGLConfig(%struct.TYPE_25__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @eglBindAPI(i32) #1

declare dso_local i32 @getEGLErrorString(i32) #1

declare dso_local i32 @eglGetError(...) #1

declare dso_local i32 @setEGLattrib(i32, i32) #1

declare dso_local i32 @eglCreateContext(i32, i32, i32*, i32*) #1

declare dso_local i32 @eglCreateWindowSurface(i32, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @_glfw_dlopen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
