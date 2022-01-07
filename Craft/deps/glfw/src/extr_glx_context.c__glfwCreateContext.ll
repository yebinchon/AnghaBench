; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_glx_context.c__glfwCreateContext.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_glx_context.c__glfwCreateContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i64, i8* (i32, i32*, i32*, i32, i32*)*, i64, i64, i64, i32, i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8*, i32 }
%struct.TYPE_19__ = type { i64, i32, i64, i64, i64, i32, i32, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }

@GLFW_FORMAT_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"GLX: Failed to find a suitable GLXFBConfig\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"GLX: Failed to retrieve visual for GLXFBConfig\00", align 1
@GLFW_OPENGL_ES_API = common dso_local global i64 0, align 8
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"GLX: OpenGL ES requested but GLX_EXT_create_context_es2_profile is unavailable\00", align 1
@GLFW_VERSION_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [87 x i8] c"GLX: Forward compatibility requested but GLX_ARB_create_context_profile is unavailable\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"GLX: An OpenGL profile requested but GLX_ARB_create_context_profile is unavailable\00", align 1
@GLFW_OPENGL_API = common dso_local global i64 0, align 8
@GLX_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i64 0, align 8
@GLX_CONTEXT_CORE_PROFILE_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_OPENGL_COMPAT_PROFILE = common dso_local global i64 0, align 8
@GLX_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB = common dso_local global i32 0, align 4
@GLX_CONTEXT_ES2_PROFILE_BIT_EXT = common dso_local global i32 0, align 4
@GLX_CONTEXT_DEBUG_BIT_ARB = common dso_local global i32 0, align 4
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
@.str.5 = private unnamed_addr constant [30 x i8] c"GLX: Failed to create context\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwCreateContext(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [40 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = icmp ne %struct.TYPE_14__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  br label %25

25:                                               ; preds = %18, %3
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @chooseFBConfig(i32* %26, i32** %9)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @GLFW_FORMAT_UNAVAILABLE, align 4
  %31 = call i32 @_glfwInputError(i32 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @GL_FALSE, align 4
  store i32 %32, i32* %4, align 4
  br label %326

33:                                               ; preds = %25
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 1, i32 1), align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @_glfw_glXGetVisualFromFBConfig(i32 %34, i32* %35)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %33
  %46 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %47 = call i32 @_glfwInputError(i32 %46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @GL_FALSE, align 4
  store i32 %48, i32* %4, align 4
  br label %326

49:                                               ; preds = %33
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 4), align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 5), align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 6), align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61, %58, %55
  %65 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %66 = call i32 @_glfwInputError(i32 %65, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @GL_FALSE, align 4
  store i32 %67, i32* %4, align 4
  br label %326

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %49
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 4), align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %79 = call i32 @_glfwInputError(i32 %78, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @GL_FALSE, align 4
  store i32 %80, i32* %4, align 4
  br label %326

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %69
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 4), align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 5), align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %95 = call i32 @_glfwInputError(i32 %94, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* @GL_FALSE, align 4
  store i32 %96, i32* %4, align 4
  br label %326

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97, %82
  %99 = call i32 (...) @_glfwGrabXErrorHandler()
  %100 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 4), align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %305

102:                                              ; preds = %98
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @GLFW_OPENGL_API, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %139

108:                                              ; preds = %102
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @GLX_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB, align 4
  %115 = load i32, i32* %13, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %113, %108
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @GLFW_OPENGL_CORE_PROFILE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i32, i32* @GLX_CONTEXT_CORE_PROFILE_BIT_ARB, align 4
  %125 = load i32, i32* %12, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %12, align 4
  br label %138

127:                                              ; preds = %117
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @GLFW_OPENGL_COMPAT_PROFILE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load i32, i32* @GLX_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB, align 4
  %135 = load i32, i32* %12, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %12, align 4
  br label %137

137:                                              ; preds = %133, %127
  br label %138

138:                                              ; preds = %137, %123
  br label %143

139:                                              ; preds = %102
  %140 = load i32, i32* @GLX_CONTEXT_ES2_PROFILE_BIT_EXT, align 4
  %141 = load i32, i32* %12, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %139, %138
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* @GLX_CONTEXT_DEBUG_BIT_ARB, align 4
  %150 = load i32, i32* %13, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %13, align 4
  br label %152

152:                                              ; preds = %148, %143
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %186

157:                                              ; preds = %152
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 3), align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %185

160:                                              ; preds = %157
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @GLFW_NO_RESET_NOTIFICATION, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %160
  %167 = load i32, i32* @GLX_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB, align 4
  %168 = load i32, i32* @GLX_NO_RESET_NOTIFICATION_ARB, align 4
  %169 = call i32 @setGLXattrib(i32 %167, i32 %168)
  br label %181

170:                                              ; preds = %160
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @GLFW_LOSE_CONTEXT_ON_RESET, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %170
  %177 = load i32, i32* @GLX_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB, align 4
  %178 = load i32, i32* @GLX_LOSE_CONTEXT_ON_RESET_ARB, align 4
  %179 = call i32 @setGLXattrib(i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %176, %170
  br label %181

181:                                              ; preds = %180, %166
  %182 = load i32, i32* @GLX_CONTEXT_ROBUST_ACCESS_BIT_ARB, align 4
  %183 = load i32, i32* %13, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %13, align 4
  br label %185

185:                                              ; preds = %181, %157
  br label %186

186:                                              ; preds = %185, %152
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %217

191:                                              ; preds = %186
  %192 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 2), align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %216

194:                                              ; preds = %191
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @GLFW_RELEASE_BEHAVIOR_NONE, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load i32, i32* @GLX_CONTEXT_RELEASE_BEHAVIOR_ARB, align 4
  %202 = load i32, i32* @GLX_CONTEXT_RELEASE_BEHAVIOR_NONE_ARB, align 4
  %203 = call i32 @setGLXattrib(i32 %201, i32 %202)
  br label %215

204:                                              ; preds = %194
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @GLFW_RELEASE_BEHAVIOR_FLUSH, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %204
  %211 = load i32, i32* @GLX_CONTEXT_RELEASE_BEHAVIOR_ARB, align 4
  %212 = load i32, i32* @GLX_CONTEXT_RELEASE_BEHAVIOR_FLUSH_ARB, align 4
  %213 = call i32 @setGLXattrib(i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %210, %204
  br label %215

215:                                              ; preds = %214, %200
  br label %216

216:                                              ; preds = %215, %191
  br label %217

217:                                              ; preds = %216, %186
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 1
  br i1 %221, label %227, label %222

222:                                              ; preds = %217
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %222, %217
  %228 = load i32, i32* @GLX_CONTEXT_MAJOR_VERSION_ARB, align 4
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @setGLXattrib(i32 %228, i32 %231)
  %233 = load i32, i32* @GLX_CONTEXT_MINOR_VERSION_ARB, align 4
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @setGLXattrib(i32 %233, i32 %236)
  br label %238

238:                                              ; preds = %227, %222
  %239 = load i32, i32* %12, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %238
  %242 = load i32, i32* @GLX_CONTEXT_PROFILE_MASK_ARB, align 4
  %243 = load i32, i32* %12, align 4
  %244 = call i32 @setGLXattrib(i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %241, %238
  %246 = load i32, i32* %13, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = load i32, i32* @GLX_CONTEXT_FLAGS_ARB, align 4
  %250 = load i32, i32* %13, align 4
  %251 = call i32 @setGLXattrib(i32 %249, i32 %250)
  br label %252

252:                                              ; preds = %248, %245
  %253 = load i32, i32* @None, align 4
  %254 = load i32, i32* @None, align 4
  %255 = call i32 @setGLXattrib(i32 %253, i32 %254)
  %256 = load i8* (i32, i32*, i32*, i32, i32*)*, i8* (i32, i32*, i32*, i32, i32*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 1), align 8
  %257 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 1, i32 1), align 8
  %258 = load i32*, i32** %9, align 8
  %259 = load i32*, i32** %10, align 8
  %260 = load i32, i32* @True, align 4
  %261 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %262 = call i8* %256(i32 %257, i32* %258, i32* %259, i32 %260, i32* %261)
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 0
  store i8* %262, i8** %265, align 8
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %304, label %271

271:                                              ; preds = %252
  %272 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 1, i32 0), align 8
  %273 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 0), align 8
  %274 = load i64, i64* @GLXBadProfileARB, align 8
  %275 = add nsw i64 %273, %274
  %276 = icmp eq i64 %272, %275
  br i1 %276, label %277, label %303

277:                                              ; preds = %271
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @GLFW_OPENGL_API, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %303

283:                                              ; preds = %277
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @GLFW_OPENGL_ANY_PROFILE, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %303

289:                                              ; preds = %283
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @GL_FALSE, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %303

295:                                              ; preds = %289
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %297 = load i32*, i32** %9, align 8
  %298 = load i32*, i32** %10, align 8
  %299 = call i8* @createLegacyContext(%struct.TYPE_18__* %296, i32* %297, i32* %298)
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 0
  store i8* %299, i8** %302, align 8
  br label %303

303:                                              ; preds = %295, %289, %283, %277, %271
  br label %304

304:                                              ; preds = %303, %252
  br label %313

305:                                              ; preds = %98
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %307 = load i32*, i32** %9, align 8
  %308 = load i32*, i32** %10, align 8
  %309 = call i8* @createLegacyContext(%struct.TYPE_18__* %306, i32* %307, i32* %308)
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 0
  store i8* %309, i8** %312, align 8
  br label %313

313:                                              ; preds = %305, %304
  %314 = call i32 (...) @_glfwReleaseXErrorHandler()
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 0
  %318 = load i8*, i8** %317, align 8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %324, label %320

320:                                              ; preds = %313
  %321 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %322 = call i32 @_glfwInputXError(i32 %321, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %323 = load i32, i32* @GL_FALSE, align 4
  store i32 %323, i32* %4, align 4
  br label %326

324:                                              ; preds = %313
  %325 = load i32, i32* @GL_TRUE, align 4
  store i32 %325, i32* %4, align 4
  br label %326

326:                                              ; preds = %324, %320, %93, %77, %64, %45, %29
  %327 = load i32, i32* %4, align 4
  ret i32 %327
}

declare dso_local i32 @chooseFBConfig(i32*, i32**) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @_glfw_glXGetVisualFromFBConfig(i32, i32*) #1

declare dso_local i32 @_glfwGrabXErrorHandler(...) #1

declare dso_local i32 @setGLXattrib(i32, i32) #1

declare dso_local i8* @createLegacyContext(%struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @_glfwReleaseXErrorHandler(...) #1

declare dso_local i32 @_glfwInputXError(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
