; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_glx_context.c__glfwCreateContextGLX.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_glx_context.c__glfwCreateContextGLX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_20__ = type { i64, i8* (i32, i32*, i32*, i32, i32*)*, i64, i64, i64, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i8* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, i32, i32, i64, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }

@GLFW_FORMAT_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"GLX: Failed to find a suitable GLXFBConfig\00", align 1
@GLFW_FALSE = common dso_local global i64 0, align 8
@GLFW_OPENGL_ES_API = common dso_local global i64 0, align 8
@_glfw = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"GLX: OpenGL ES requested but GLX_EXT_create_context_es2_profile is unavailable\00", align 1
@GLFW_VERSION_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"GLX: Forward compatibility requested but GLX_ARB_create_context_profile is unavailable\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"GLX: An OpenGL profile requested but GLX_ARB_create_context_profile is unavailable\00", align 1
@GLFW_OPENGL_API = common dso_local global i64 0, align 8
@GLX_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i64 0, align 8
@GLX_CONTEXT_CORE_PROFILE_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_OPENGL_COMPAT_PROFILE = common dso_local global i64 0, align 8
@GLX_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_ES2_PROFILE_BIT_EXT = common dso_local global i32 0, align 4
@GLX_CONTEXT_DEBUG_BIT_ARB = common dso_local global i32 0, align 4
@GL_CONTEXT_FLAG_NO_ERROR_BIT_KHR = common dso_local global i32 0, align 4
@GLFW_NO_RESET_NOTIFICATION = common dso_local global i64 0, align 8
@GLX_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB = common dso_local global i32 0, align 4
@GLX_NO_RESET_NOTIFICATION_ARB = common dso_local global i32 0, align 4
@GLFW_LOSE_CONTEXT_ON_RESET = common dso_local global i64 0, align 8
@GLX_LOSE_CONTEXT_ON_RESET_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_ROBUST_ACCESS_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_RELEASE_BEHAVIOR_NONE = common dso_local global i64 0, align 8
@GLX_CONTEXT_RELEASE_BEHAVIOR_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_RELEASE_BEHAVIOR_NONE_ARB = common dso_local global i32 0, align 4
@GLFW_RELEASE_BEHAVIOR_FLUSH = common dso_local global i64 0, align 8
@GLX_CONTEXT_RELEASE_BEHAVIOR_FLUSH_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_MAJOR_VERSION_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_MINOR_VERSION_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_PROFILE_MASK_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_FLAGS_ARB = common dso_local global i32 0, align 4
@None = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@GLXBadProfileARB = common dso_local global i64 0, align 8
@GLFW_OPENGL_ANY_PROFILE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"GLX: Failed to create context\00", align 1
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"GLX: Failed to create window\00", align 1
@makeContextCurrentGLX = common dso_local global i32 0, align 4
@swapBuffersGLX = common dso_local global i32 0, align 4
@swapIntervalGLX = common dso_local global i32 0, align 4
@extensionSupportedGLX = common dso_local global i32 0, align 4
@getProcAddressGLX = common dso_local global i32 0, align 4
@destroyContextGLX = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_glfwCreateContextGLX(%struct.TYPE_25__* %0, %struct.TYPE_15__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [40 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 9
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %17 = icmp ne %struct.TYPE_19__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 9
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %10, align 8
  br label %26

26:                                               ; preds = %18, %3
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @chooseGLXFBConfig(i32* %27, i32** %9)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @GLFW_FORMAT_UNAVAILABLE, align 4
  %32 = call i32 @_glfwInputError(i32 %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* @GLFW_FALSE, align 8
  store i64 %33, i64* %4, align 8
  br label %371

34:                                               ; preds = %26
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 4), align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 5), align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 6), align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46, %43, %40
  %50 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %51 = call i32 @_glfwInputError(i32 %50, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i64, i64* @GLFW_FALSE, align 8
  store i64 %52, i64* %4, align 8
  br label %371

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %34
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 4), align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %64 = call i32 @_glfwInputError(i32 %63, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i64, i64* @GLFW_FALSE, align 8
  store i64 %65, i64* %4, align 8
  br label %371

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %54
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 4), align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 5), align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %80 = call i32 @_glfwInputError(i32 %79, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i64, i64* @GLFW_FALSE, align 8
  store i64 %81, i64* %4, align 8
  br label %371

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %67
  %84 = call i32 (...) @_glfwGrabErrorHandlerX11()
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 4), align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %302

87:                                               ; preds = %83
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @GLFW_OPENGL_API, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %124

93:                                               ; preds = %87
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @GLX_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB, align 4
  %100 = load i32, i32* %13, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @GLFW_OPENGL_CORE_PROFILE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i32, i32* @GLX_CONTEXT_CORE_PROFILE_BIT_ARB, align 4
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %12, align 4
  br label %123

112:                                              ; preds = %102
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @GLFW_OPENGL_COMPAT_PROFILE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i32, i32* @GLX_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB, align 4
  %120 = load i32, i32* %12, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %118, %112
  br label %123

123:                                              ; preds = %122, %108
  br label %128

124:                                              ; preds = %87
  %125 = load i32, i32* @GLX_CONTEXT_ES2_PROFILE_BIT_EXT, align 4
  %126 = load i32, i32* %12, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %124, %123
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 8
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* @GLX_CONTEXT_DEBUG_BIT_ARB, align 4
  %135 = load i32, i32* %13, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %133, %128
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32, i32* @GL_CONTEXT_FLAG_NO_ERROR_BIT_KHR, align 4
  %144 = load i32, i32* %13, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %13, align 4
  br label %146

146:                                              ; preds = %142, %137
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %180

151:                                              ; preds = %146
  %152 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 3), align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %179

154:                                              ; preds = %151
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @GLFW_NO_RESET_NOTIFICATION, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load i32, i32* @GLX_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB, align 4
  %162 = load i32, i32* @GLX_NO_RESET_NOTIFICATION_ARB, align 4
  %163 = call i32 @setGLXattrib(i32 %161, i32 %162)
  br label %175

164:                                              ; preds = %154
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @GLFW_LOSE_CONTEXT_ON_RESET, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load i32, i32* @GLX_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB, align 4
  %172 = load i32, i32* @GLX_LOSE_CONTEXT_ON_RESET_ARB, align 4
  %173 = call i32 @setGLXattrib(i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %164
  br label %175

175:                                              ; preds = %174, %160
  %176 = load i32, i32* @GLX_CONTEXT_ROBUST_ACCESS_BIT_ARB, align 4
  %177 = load i32, i32* %13, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %13, align 4
  br label %179

179:                                              ; preds = %175, %151
  br label %180

180:                                              ; preds = %179, %146
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %211

185:                                              ; preds = %180
  %186 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 2), align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %210

188:                                              ; preds = %185
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @GLFW_RELEASE_BEHAVIOR_NONE, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load i32, i32* @GLX_CONTEXT_RELEASE_BEHAVIOR_ARB, align 4
  %196 = load i32, i32* @GLX_CONTEXT_RELEASE_BEHAVIOR_NONE_ARB, align 4
  %197 = call i32 @setGLXattrib(i32 %195, i32 %196)
  br label %209

198:                                              ; preds = %188
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @GLFW_RELEASE_BEHAVIOR_FLUSH, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = load i32, i32* @GLX_CONTEXT_RELEASE_BEHAVIOR_ARB, align 4
  %206 = load i32, i32* @GLX_CONTEXT_RELEASE_BEHAVIOR_FLUSH_ARB, align 4
  %207 = call i32 @setGLXattrib(i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %204, %198
  br label %209

209:                                              ; preds = %208, %194
  br label %210

210:                                              ; preds = %209, %185
  br label %211

211:                                              ; preds = %210, %180
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 1
  br i1 %215, label %221, label %216

216:                                              ; preds = %211
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %232

221:                                              ; preds = %216, %211
  %222 = load i32, i32* @GLX_CONTEXT_MAJOR_VERSION_ARB, align 4
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @setGLXattrib(i32 %222, i32 %225)
  %227 = load i32, i32* @GLX_CONTEXT_MINOR_VERSION_ARB, align 4
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @setGLXattrib(i32 %227, i32 %230)
  br label %232

232:                                              ; preds = %221, %216
  %233 = load i32, i32* %12, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %232
  %236 = load i32, i32* @GLX_CONTEXT_PROFILE_MASK_ARB, align 4
  %237 = load i32, i32* %12, align 4
  %238 = call i32 @setGLXattrib(i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %235, %232
  %240 = load i32, i32* %13, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %239
  %243 = load i32, i32* @GLX_CONTEXT_FLAGS_ARB, align 4
  %244 = load i32, i32* %13, align 4
  %245 = call i32 @setGLXattrib(i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %242, %239
  %247 = load i32, i32* @None, align 4
  %248 = load i32, i32* @None, align 4
  %249 = call i32 @setGLXattrib(i32 %247, i32 %248)
  %250 = load i8* (i32, i32*, i32*, i32, i32*)*, i8* (i32, i32*, i32*, i32, i32*)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 1), align 8
  %251 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1), align 8
  %252 = load i32*, i32** %9, align 8
  %253 = load i32*, i32** %10, align 8
  %254 = load i32, i32* @True, align 4
  %255 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %256 = call i8* %250(i32 %251, i32* %252, i32* %253, i32 %254, i32* %255)
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i32 0, i32 6
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 1
  store i8* %256, i8** %260, align 8
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 6
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 1
  %265 = load i8*, i8** %264, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %301, label %267

267:                                              ; preds = %246
  %268 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 0), align 8
  %269 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 1, i32 0), align 8
  %270 = load i64, i64* @GLXBadProfileARB, align 8
  %271 = add nsw i64 %269, %270
  %272 = icmp eq i64 %268, %271
  br i1 %272, label %273, label %300

273:                                              ; preds = %267
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @GLFW_OPENGL_API, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %300

279:                                              ; preds = %273
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @GLFW_OPENGL_ANY_PROFILE, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %300

285:                                              ; preds = %279
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @GLFW_FALSE, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %300

291:                                              ; preds = %285
  %292 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %293 = load i32*, i32** %9, align 8
  %294 = load i32*, i32** %10, align 8
  %295 = call i8* @createLegacyContextGLX(%struct.TYPE_25__* %292, i32* %293, i32* %294)
  %296 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %297, i32 0, i32 6
  %299 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %298, i32 0, i32 1
  store i8* %295, i8** %299, align 8
  br label %300

300:                                              ; preds = %291, %285, %279, %273, %267
  br label %301

301:                                              ; preds = %300, %246
  br label %311

302:                                              ; preds = %83
  %303 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %304 = load i32*, i32** %9, align 8
  %305 = load i32*, i32** %10, align 8
  %306 = call i8* @createLegacyContextGLX(%struct.TYPE_25__* %303, i32* %304, i32* %305)
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i32 0, i32 6
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 1
  store i8* %306, i8** %310, align 8
  br label %311

311:                                              ; preds = %302, %301
  %312 = call i32 (...) @_glfwReleaseErrorHandlerX11()
  %313 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i32 0, i32 6
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 1
  %317 = load i8*, i8** %316, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %323, label %319

319:                                              ; preds = %311
  %320 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %321 = call i32 @_glfwInputErrorX11(i32 %320, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %322 = load i64, i64* @GLFW_FALSE, align 8
  store i64 %322, i64* %4, align 8
  br label %371

323:                                              ; preds = %311
  %324 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @_glfw, i32 0, i32 0, i32 1), align 8
  %325 = load i32*, i32** %9, align 8
  %326 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @glXCreateWindow(i32 %324, i32* %325, i32 %329, i32* null)
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %332, i32 0, i32 6
  %334 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %333, i32 0, i32 0
  store i32 %330, i32* %334, align 8
  %335 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %336, i32 0, i32 6
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %345, label %341

341:                                              ; preds = %323
  %342 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %343 = call i32 @_glfwInputError(i32 %342, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %344 = load i64, i64* @GLFW_FALSE, align 8
  store i64 %344, i64* %4, align 8
  br label %371

345:                                              ; preds = %323
  %346 = load i32, i32* @makeContextCurrentGLX, align 4
  %347 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %348, i32 0, i32 5
  store i32 %346, i32* %349, align 4
  %350 = load i32, i32* @swapBuffersGLX, align 4
  %351 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %352, i32 0, i32 4
  store i32 %350, i32* %353, align 8
  %354 = load i32, i32* @swapIntervalGLX, align 4
  %355 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %356, i32 0, i32 3
  store i32 %354, i32* %357, align 4
  %358 = load i32, i32* @extensionSupportedGLX, align 4
  %359 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %360, i32 0, i32 2
  store i32 %358, i32* %361, align 8
  %362 = load i32, i32* @getProcAddressGLX, align 4
  %363 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %364, i32 0, i32 1
  store i32 %362, i32* %365, align 4
  %366 = load i32, i32* @destroyContextGLX, align 4
  %367 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %368, i32 0, i32 0
  store i32 %366, i32* %369, align 8
  %370 = load i64, i64* @GLFW_TRUE, align 8
  store i64 %370, i64* %4, align 8
  br label %371

371:                                              ; preds = %345, %341, %319, %78, %62, %49, %30
  %372 = load i64, i64* %4, align 8
  ret i64 %372
}

declare dso_local i32 @chooseGLXFBConfig(i32*, i32**) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @_glfwGrabErrorHandlerX11(...) #1

declare dso_local i32 @setGLXattrib(i32, i32) #1

declare dso_local i8* @createLegacyContextGLX(%struct.TYPE_25__*, i32*, i32*) #1

declare dso_local i32 @_glfwReleaseErrorHandlerX11(...) #1

declare dso_local i32 @_glfwInputErrorX11(i32, i8*) #1

declare dso_local i32 @glXCreateWindow(i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
