; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_egl_context.c__glfwCreateContext.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_egl_context.c__glfwCreateContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i64, i64, i64, i32, i32, i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }

@GLFW_FORMAT_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"EGL: Failed to find a suitable EGLConfig\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@GLFW_OPENGL_ES_API = common dso_local global i64 0, align 8
@EGL_OPENGL_ES_API = common dso_local global i32 0, align 4
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"EGL: Failed to bind OpenGL ES: %s\00", align 1
@EGL_OPENGL_API = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"EGL: Failed to bind OpenGL: %s\00", align 1
@_glfw = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GLFW_OPENGL_API = common dso_local global i64 0, align 8
@EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE_BIT_KHR = common dso_local global i32 0, align 4
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i64 0, align 8
@EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT_KHR = common dso_local global i32 0, align 4
@GLFW_OPENGL_COMPAT_PROFILE = common dso_local global i64 0, align 8
@EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT_KHR = common dso_local global i32 0, align 4
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
@.str.3 = private unnamed_addr constant [34 x i8] c"EGL: Failed to create context: %s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"libGLESv1_CM.so.1\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"libGLES_CM.so.1\00", align 1
@__const._glfwCreateContext.es1sonames = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@.str.6 = private unnamed_addr constant [15 x i8] c"libGLESv2.so.2\00", align 1
@__const._glfwCreateContext.es2sonames = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* null], align 16
@.str.7 = private unnamed_addr constant [11 x i8] c"libGL.so.1\00", align 1
@__const._glfwCreateContext.glsonames = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@.str.8 = private unnamed_addr constant [35 x i8] c"EGL: Failed to load client library\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4
@EGL_ALPHA_SIZE = common dso_local global i32 0, align 4
@EGL_BLUE_SIZE = common dso_local global i32 0, align 4
@EGL_GREEN_SIZE = common dso_local global i32 0, align 4
@EGL_NATIVE_VISUAL_ID = common dso_local global i32 0, align 4
@EGL_RED_SIZE = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@VisualDepthMask = common dso_local global i32 0, align 4
@VisualIDMask = common dso_local global i32 0, align 4
@VisualScreenMask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwCreateContext(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [40 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca [3 x i8*], align 16
  %18 = alloca [2 x i8*], align 16
  %19 = alloca [2 x i8*], align 16
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %10, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 7
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 7
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %10, align 8
  br label %31

31:                                               ; preds = %24, %3
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @chooseFBConfigs(%struct.TYPE_21__* %32, i32* %33, i32* %9)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @GLFW_FORMAT_UNAVAILABLE, align 4
  %38 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @GL_FALSE, align 4
  store i32 %39, i32* %4, align 4
  br label %288

40:                                               ; preds = %31
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load i32, i32* @EGL_OPENGL_ES_API, align 4
  %48 = call i32 @_glfw_eglBindAPI(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %52 = call i32 (...) @_glfw_eglGetError()
  %53 = call i32 @getErrorString(i32 %52)
  %54 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @GL_FALSE, align 4
  store i32 %55, i32* %4, align 4
  br label %288

56:                                               ; preds = %46
  br label %68

57:                                               ; preds = %40
  %58 = load i32, i32* @EGL_OPENGL_API, align 4
  %59 = call i32 @_glfw_eglBindAPI(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %63 = call i32 (...) @_glfw_eglGetError()
  %64 = call i32 @getErrorString(i32 %63)
  %65 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @GL_FALSE, align 4
  store i32 %66, i32* %4, align 4
  br label %288

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %56
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %186

71:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @GLFW_OPENGL_API, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %108

77:                                               ; preds = %71
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE_BIT_KHR, align 4
  %84 = load i32, i32* %13, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %82, %77
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @GLFW_OPENGL_CORE_PROFILE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* @EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT_KHR, align 4
  %94 = load i32, i32* %12, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %12, align 4
  br label %107

96:                                               ; preds = %86
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @GLFW_OPENGL_COMPAT_PROFILE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* @EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT_KHR, align 4
  %104 = load i32, i32* %12, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %102, %96
  br label %107

107:                                              ; preds = %106, %92
  br label %108

108:                                              ; preds = %107, %71
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR, align 4
  %115 = load i32, i32* %13, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %113, %108
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %147

122:                                              ; preds = %117
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @GLFW_NO_RESET_NOTIFICATION, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i32, i32* @EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_KHR, align 4
  %130 = load i32, i32* @EGL_NO_RESET_NOTIFICATION_KHR, align 4
  %131 = call i32 @setEGLattrib(i32 %129, i32 %130)
  br label %143

132:                                              ; preds = %122
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @GLFW_LOSE_CONTEXT_ON_RESET, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load i32, i32* @EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_KHR, align 4
  %140 = load i32, i32* @EGL_LOSE_CONTEXT_ON_RESET_KHR, align 4
  %141 = call i32 @setEGLattrib(i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %132
  br label %143

143:                                              ; preds = %142, %128
  %144 = load i32, i32* @EGL_CONTEXT_OPENGL_ROBUST_ACCESS_BIT_KHR, align 4
  %145 = load i32, i32* %13, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %143, %117
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 1
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %152, %147
  %158 = load i32, i32* @EGL_CONTEXT_MAJOR_VERSION_KHR, align 4
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @setEGLattrib(i32 %158, i32 %161)
  %163 = load i32, i32* @EGL_CONTEXT_MINOR_VERSION_KHR, align 4
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @setEGLattrib(i32 %163, i32 %166)
  br label %168

168:                                              ; preds = %157, %152
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i32, i32* @EGL_CONTEXT_OPENGL_PROFILE_MASK_KHR, align 4
  %173 = load i32, i32* %12, align 4
  %174 = call i32 @setEGLattrib(i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %171, %168
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load i32, i32* @EGL_CONTEXT_FLAGS_KHR, align 4
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @setEGLattrib(i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %175
  %183 = load i32, i32* @EGL_NONE, align 4
  %184 = load i32, i32* @EGL_NONE, align 4
  %185 = call i32 @setEGLattrib(i32 %183, i32 %184)
  br label %202

186:                                              ; preds = %68
  store i32 0, i32* %14, align 4
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %186
  %193 = load i32, i32* @EGL_CONTEXT_CLIENT_VERSION, align 4
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @setEGLattrib(i32 %193, i32 %196)
  br label %198

198:                                              ; preds = %192, %186
  %199 = load i32, i32* @EGL_NONE, align 4
  %200 = load i32, i32* @EGL_NONE, align 4
  %201 = call i32 @setEGLattrib(i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %198, %182
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %204 = load i32, i32* %9, align 4
  %205 = load i32*, i32** %10, align 8
  %206 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %207 = call i32 @_glfw_eglCreateContext(i32 %203, i32 %204, i32* %205, i32* %206)
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 2
  store i32 %207, i32* %210, align 4
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %202
  %218 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %219 = call i32 (...) @_glfw_eglGetError()
  %220 = call i32 @getErrorString(i32 %219)
  %221 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %218, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %220)
  %222 = load i32, i32* @GL_FALSE, align 4
  store i32 %222, i32* %4, align 4
  br label %288

223:                                              ; preds = %202
  %224 = load i32, i32* %9, align 4
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 1
  store i32 %224, i32* %227, align 4
  %228 = bitcast [3 x i8*]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %228, i8* align 16 bitcast ([3 x i8*]* @__const._glfwCreateContext.es1sonames to i8*), i64 24, i1 false)
  %229 = bitcast [2 x i8*]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %229, i8* align 16 bitcast ([2 x i8*]* @__const._glfwCreateContext.es2sonames to i8*), i64 16, i1 false)
  %230 = bitcast [2 x i8*]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %230, i8* align 16 bitcast ([2 x i8*]* @__const._glfwCreateContext.glsonames to i8*), i64 16, i1 false)
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %246

236:                                              ; preds = %223
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = getelementptr inbounds [3 x i8*], [3 x i8*]* %17, i64 0, i64 0
  store i8** %242, i8*** %16, align 8
  br label %245

243:                                              ; preds = %236
  %244 = getelementptr inbounds [2 x i8*], [2 x i8*]* %18, i64 0, i64 0
  store i8** %244, i8*** %16, align 8
  br label %245

245:                                              ; preds = %243, %241
  br label %248

246:                                              ; preds = %223
  %247 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 0
  store i8** %247, i8*** %16, align 8
  br label %248

248:                                              ; preds = %246, %245
  store i32 0, i32* %15, align 4
  br label %249

249:                                              ; preds = %273, %248
  %250 = load i8**, i8*** %16, align 8
  %251 = load i32, i32* %15, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8*, i8** %250, i64 %252
  %254 = load i8*, i8** %253, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %276

256:                                              ; preds = %249
  %257 = load i8**, i8*** %16, align 8
  %258 = load i32, i32* %15, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8*, i8** %257, i64 %259
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @_glfw_dlopen(i8* %261)
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 0
  store i32 %262, i32* %265, align 4
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %256
  br label %276

272:                                              ; preds = %256
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %15, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %15, align 4
  br label %249

276:                                              ; preds = %271, %249
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %276
  %283 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %284 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %283, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %285 = load i32, i32* @GL_FALSE, align 4
  store i32 %285, i32* %4, align 4
  br label %288

286:                                              ; preds = %276
  %287 = load i32, i32* @GL_TRUE, align 4
  store i32 %287, i32* %4, align 4
  br label %288

288:                                              ; preds = %286, %282, %217, %61, %50, %36
  %289 = load i32, i32* %4, align 4
  ret i32 %289
}

declare dso_local i32 @chooseFBConfigs(%struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i32 @_glfw_eglBindAPI(i32) #1

declare dso_local i32 @getErrorString(i32) #1

declare dso_local i32 @_glfw_eglGetError(...) #1

declare dso_local i32 @setEGLattrib(i32, i32) #1

declare dso_local i32 @_glfw_eglCreateContext(i32, i32, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_glfw_dlopen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
