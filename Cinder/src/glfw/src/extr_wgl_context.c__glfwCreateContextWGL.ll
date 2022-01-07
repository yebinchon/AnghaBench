; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wgl_context.c__glfwCreateContextWGL.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wgl_context.c__glfwCreateContextWGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 (i32, i32*, i32*)*, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_18__ }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }

@_glfw = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"WGL: Failed to retrieve DC for window\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"WGL: Failed to retrieve PFD for selected pixel format\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"WGL: Failed to set selected pixel format\00", align 1
@GLFW_OPENGL_API = common dso_local global i64 0, align 8
@GLFW_VERSION_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [93 x i8] c"WGL: A forward compatible OpenGL context requested but WGL_ARB_create_context is unavailable\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"WGL: OpenGL profile requested but WGL_ARB_create_context_profile is unavailable\00", align 1
@GLFW_API_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [79 x i8] c"WGL: OpenGL ES requested but WGL_ARB_create_context_es2_profile is unavailable\00", align 1
@WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i64 0, align 8
@WGL_CONTEXT_CORE_PROFILE_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_OPENGL_COMPAT_PROFILE = common dso_local global i64 0, align 8
@WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_ES2_PROFILE_BIT_EXT = common dso_local global i32 0, align 4
@WGL_CONTEXT_DEBUG_BIT_ARB = common dso_local global i32 0, align 4
@GL_CONTEXT_FLAG_NO_ERROR_BIT_KHR = common dso_local global i32 0, align 4
@GLFW_NO_RESET_NOTIFICATION = common dso_local global i64 0, align 8
@WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB = common dso_local global i32 0, align 4
@WGL_NO_RESET_NOTIFICATION_ARB = common dso_local global i32 0, align 4
@GLFW_LOSE_CONTEXT_ON_RESET = common dso_local global i64 0, align 8
@WGL_LOSE_CONTEXT_ON_RESET_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_ROBUST_ACCESS_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_RELEASE_BEHAVIOR_NONE = common dso_local global i64 0, align 8
@WGL_CONTEXT_RELEASE_BEHAVIOR_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_RELEASE_BEHAVIOR_NONE_ARB = common dso_local global i32 0, align 4
@GLFW_RELEASE_BEHAVIOR_FLUSH = common dso_local global i64 0, align 8
@WGL_CONTEXT_RELEASE_BEHAVIOR_FLUSH_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_MAJOR_VERSION_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_MINOR_VERSION_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_FLAGS_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_PROFILE_MASK_ARB = common dso_local global i32 0, align 4
@ERROR_INVALID_VERSION_ARB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"WGL: Driver does not support OpenGL version %i.%i\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"WGL: Driver does not support OpenGL ES version %i.%i\00", align 1
@ERROR_INVALID_PROFILE_ARB = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [58 x i8] c"WGL: Driver does not support the requested OpenGL profile\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"WGL: Failed to create OpenGL context\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"WGL: Failed to create OpenGL ES context\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"WGL: Failed to enable sharing with specified OpenGL context\00", align 1
@makeContextCurrentWGL = common dso_local global i32 0, align 4
@swapBuffersWGL = common dso_local global i32 0, align 4
@swapIntervalWGL = common dso_local global i32 0, align 4
@extensionSupportedWGL = common dso_local global i32 0, align 4
@getProcAddressWGL = common dso_local global i32 0, align 4
@destroyContextWGL = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwCreateContextWGL(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [40 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %11, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 6), align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = call i32 (...) @loadWGLExtensions()
  br label %20

20:                                               ; preds = %18, %3
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 9
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = icmp ne %struct.TYPE_17__* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 9
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %11, align 8
  br label %33

33:                                               ; preds = %25, %20
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @GetDC(i32 %37)
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %33
  %50 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %51 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %52, i32* %4, align 4
  br label %438

53:                                               ; preds = %33
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @choosePixelFormat(%struct.TYPE_22__* %54, i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %60, i32* %4, align 4
  br label %438

61:                                               ; preds = %53
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @DescribePixelFormat(i32 %66, i32 %67, i32 4, i32* %10)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %72 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %71, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %73, i32* %4, align 4
  br label %438

74:                                               ; preds = %61
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @SetPixelFormat(i32 %79, i32 %80, i32* %10)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %74
  %84 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %85 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %86, i32* %4, align 4
  br label %438

87:                                               ; preds = %74
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @GLFW_OPENGL_API, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %120

93:                                               ; preds = %87
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 8
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 3), align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %103 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %102, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %104, i32* %4, align 4
  br label %438

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %93
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 5), align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %116 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %115, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %117, i32* %4, align 4
  br label %438

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %106
  br label %134

120:                                              ; preds = %87
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 3), align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 5), align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 4), align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %126, %123, %120
  %130 = load i32, i32* @GLFW_API_UNAVAILABLE, align 4
  %131 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %130, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0))
  %132 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %132, i32* %4, align 4
  br label %438

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %119
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 3), align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %373

137:                                              ; preds = %134
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @GLFW_OPENGL_API, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %174

143:                                              ; preds = %137
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 8
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* @WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB, align 4
  %150 = load i32, i32* %14, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %14, align 4
  br label %152

152:                                              ; preds = %148, %143
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @GLFW_OPENGL_CORE_PROFILE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load i32, i32* @WGL_CONTEXT_CORE_PROFILE_BIT_ARB, align 4
  %160 = load i32, i32* %13, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %13, align 4
  br label %173

162:                                              ; preds = %152
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @GLFW_OPENGL_COMPAT_PROFILE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = load i32, i32* @WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB, align 4
  %170 = load i32, i32* %13, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %168, %162
  br label %173

173:                                              ; preds = %172, %158
  br label %178

174:                                              ; preds = %137
  %175 = load i32, i32* @WGL_CONTEXT_ES2_PROFILE_BIT_EXT, align 4
  %176 = load i32, i32* %13, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %13, align 4
  br label %178

178:                                              ; preds = %174, %173
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 7
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load i32, i32* @WGL_CONTEXT_DEBUG_BIT_ARB, align 4
  %185 = load i32, i32* %14, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %14, align 4
  br label %187

187:                                              ; preds = %183, %178
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 6
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load i32, i32* @GL_CONTEXT_FLAG_NO_ERROR_BIT_KHR, align 4
  %194 = load i32, i32* %14, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %14, align 4
  br label %196

196:                                              ; preds = %192, %187
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %230

201:                                              ; preds = %196
  %202 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 2), align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %229

204:                                              ; preds = %201
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @GLFW_NO_RESET_NOTIFICATION, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %204
  %211 = load i32, i32* @WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB, align 4
  %212 = load i32, i32* @WGL_NO_RESET_NOTIFICATION_ARB, align 4
  %213 = call i32 @setWGLattrib(i32 %211, i32 %212)
  br label %225

214:                                              ; preds = %204
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @GLFW_LOSE_CONTEXT_ON_RESET, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %214
  %221 = load i32, i32* @WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB, align 4
  %222 = load i32, i32* @WGL_LOSE_CONTEXT_ON_RESET_ARB, align 4
  %223 = call i32 @setWGLattrib(i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %220, %214
  br label %225

225:                                              ; preds = %224, %210
  %226 = load i32, i32* @WGL_CONTEXT_ROBUST_ACCESS_BIT_ARB, align 4
  %227 = load i32, i32* %14, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %14, align 4
  br label %229

229:                                              ; preds = %225, %201
  br label %230

230:                                              ; preds = %229, %196
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %261

235:                                              ; preds = %230
  %236 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 1), align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %260

238:                                              ; preds = %235
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @GLFW_RELEASE_BEHAVIOR_NONE, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %238
  %245 = load i32, i32* @WGL_CONTEXT_RELEASE_BEHAVIOR_ARB, align 4
  %246 = load i32, i32* @WGL_CONTEXT_RELEASE_BEHAVIOR_NONE_ARB, align 4
  %247 = call i32 @setWGLattrib(i32 %245, i32 %246)
  br label %259

248:                                              ; preds = %238
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @GLFW_RELEASE_BEHAVIOR_FLUSH, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %248
  %255 = load i32, i32* @WGL_CONTEXT_RELEASE_BEHAVIOR_ARB, align 4
  %256 = load i32, i32* @WGL_CONTEXT_RELEASE_BEHAVIOR_FLUSH_ARB, align 4
  %257 = call i32 @setWGLattrib(i32 %255, i32 %256)
  br label %258

258:                                              ; preds = %254, %248
  br label %259

259:                                              ; preds = %258, %244
  br label %260

260:                                              ; preds = %259, %235
  br label %261

261:                                              ; preds = %260, %230
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 1
  br i1 %265, label %271, label %266

266:                                              ; preds = %261
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %282

271:                                              ; preds = %266, %261
  %272 = load i32, i32* @WGL_CONTEXT_MAJOR_VERSION_ARB, align 4
  %273 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @setWGLattrib(i32 %272, i32 %275)
  %277 = load i32, i32* @WGL_CONTEXT_MINOR_VERSION_ARB, align 4
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @setWGLattrib(i32 %277, i32 %280)
  br label %282

282:                                              ; preds = %271, %266
  %283 = load i32, i32* %14, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %282
  %286 = load i32, i32* @WGL_CONTEXT_FLAGS_ARB, align 4
  %287 = load i32, i32* %14, align 4
  %288 = call i32 @setWGLattrib(i32 %286, i32 %287)
  br label %289

289:                                              ; preds = %285, %282
  %290 = load i32, i32* %13, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %289
  %293 = load i32, i32* @WGL_CONTEXT_PROFILE_MASK_ARB, align 4
  %294 = load i32, i32* %13, align 4
  %295 = call i32 @setWGLattrib(i32 %293, i32 %294)
  br label %296

296:                                              ; preds = %292, %289
  %297 = call i32 @setWGLattrib(i32 0, i32 0)
  %298 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @_glfw, i32 0, i32 0, i32 0), align 8
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 6
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load i32*, i32** %11, align 8
  %305 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %306 = call i32 %298(i32 %303, i32* %304, i32* %305)
  %307 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %308, i32 0, i32 6
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 0
  store i32 %306, i32* %310, align 4
  %311 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i32 0, i32 6
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %372, label %317

317:                                              ; preds = %296
  %318 = call i32 (...) @GetLastError()
  store i32 %318, i32* %15, align 4
  %319 = load i32, i32* %15, align 4
  %320 = load i32, i32* @ERROR_INVALID_VERSION_ARB, align 4
  %321 = or i32 -1073283072, %320
  %322 = icmp eq i32 %319, %321
  br i1 %322, label %323, label %348

323:                                              ; preds = %317
  %324 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @GLFW_OPENGL_API, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %338

329:                                              ; preds = %323
  %330 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %331 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %334, i32 0, i32 5
  %336 = load i32, i32* %335, align 4
  %337 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %330, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %333, i32 %336)
  br label %347

338:                                              ; preds = %323
  %339 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %340 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %339, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %342, i32 %345)
  br label %347

347:                                              ; preds = %338, %329
  br label %370

348:                                              ; preds = %317
  %349 = load i32, i32* %15, align 4
  %350 = load i32, i32* @ERROR_INVALID_PROFILE_ARB, align 4
  %351 = or i32 -1073283072, %350
  %352 = icmp eq i32 %349, %351
  br i1 %352, label %353, label %356

353:                                              ; preds = %348
  %354 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %355 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %354, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  br label %369

356:                                              ; preds = %348
  %357 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @GLFW_OPENGL_API, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %365

362:                                              ; preds = %356
  %363 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %364 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %363, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %368

365:                                              ; preds = %356
  %366 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %367 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %366, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %368

368:                                              ; preds = %365, %362
  br label %369

369:                                              ; preds = %368, %353
  br label %370

370:                                              ; preds = %369, %347
  %371 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %371, i32* %4, align 4
  br label %438

372:                                              ; preds = %296
  br label %412

373:                                              ; preds = %134
  %374 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %375, i32 0, i32 6
  %377 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @wglCreateContext(i32 %378)
  %380 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %381, i32 0, i32 6
  %383 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %382, i32 0, i32 0
  store i32 %379, i32* %383, align 4
  %384 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %385, i32 0, i32 6
  %387 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %394, label %390

390:                                              ; preds = %373
  %391 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %392 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %391, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %393 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %393, i32* %4, align 4
  br label %438

394:                                              ; preds = %373
  %395 = load i32*, i32** %11, align 8
  %396 = icmp ne i32* %395, null
  br i1 %396, label %397, label %411

397:                                              ; preds = %394
  %398 = load i32*, i32** %11, align 8
  %399 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %400, i32 0, i32 6
  %402 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @wglShareLists(i32* %398, i32 %403)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %410, label %406

406:                                              ; preds = %397
  %407 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %408 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %407, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0))
  %409 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %409, i32* %4, align 4
  br label %438

410:                                              ; preds = %397
  br label %411

411:                                              ; preds = %410, %394
  br label %412

412:                                              ; preds = %411, %372
  %413 = load i32, i32* @makeContextCurrentWGL, align 4
  %414 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %415, i32 0, i32 5
  store i32 %413, i32* %416, align 4
  %417 = load i32, i32* @swapBuffersWGL, align 4
  %418 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %419, i32 0, i32 4
  store i32 %417, i32* %420, align 4
  %421 = load i32, i32* @swapIntervalWGL, align 4
  %422 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %423, i32 0, i32 3
  store i32 %421, i32* %424, align 4
  %425 = load i32, i32* @extensionSupportedWGL, align 4
  %426 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %427, i32 0, i32 2
  store i32 %425, i32* %428, align 4
  %429 = load i32, i32* @getProcAddressWGL, align 4
  %430 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %431, i32 0, i32 1
  store i32 %429, i32* %432, align 4
  %433 = load i32, i32* @destroyContextWGL, align 4
  %434 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %435 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %435, i32 0, i32 0
  store i32 %433, i32* %436, align 4
  %437 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %437, i32* %4, align 4
  br label %438

438:                                              ; preds = %412, %406, %390, %370, %129, %114, %101, %83, %70, %59, %49
  %439 = load i32, i32* %4, align 4
  ret i32 %439
}

declare dso_local i32 @loadWGLExtensions(...) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i32 @choosePixelFormat(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @DescribePixelFormat(i32, i32, i32, i32*) #1

declare dso_local i32 @SetPixelFormat(i32, i32, i32*) #1

declare dso_local i32 @setWGLattrib(i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @wglCreateContext(i32) #1

declare dso_local i32 @wglShareLists(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
