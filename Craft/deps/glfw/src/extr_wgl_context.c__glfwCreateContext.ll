; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wgl_context.c__glfwCreateContext.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wgl_context.c__glfwCreateContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64, i32, i64 (i32, i32*, i32*)*, i64, i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i64, i32, i32, i64, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }

@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"WGL: Failed to retrieve DC for window\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"WGL: Failed to retrieve PFD for selected pixel format\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"WGL: Failed to set selected pixel format\00", align 1
@GLFW_OPENGL_API = common dso_local global i64 0, align 8
@WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i64 0, align 8
@WGL_CONTEXT_CORE_PROFILE_BIT_ARB = common dso_local global i32 0, align 4
@GLFW_OPENGL_COMPAT_PROFILE = common dso_local global i64 0, align 8
@WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB = common dso_local global i32 0, align 4
@WGL_CONTEXT_ES2_PROFILE_BIT_EXT = common dso_local global i32 0, align 4
@WGL_CONTEXT_DEBUG_BIT_ARB = common dso_local global i32 0, align 4
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
@GLFW_VERSION_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"WGL: Failed to create OpenGL context\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"WGL: Failed to enable sharing with specified OpenGL context\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwCreateContext(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [40 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %11, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = icmp ne %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  br label %26

26:                                               ; preds = %19, %3
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @GetDC(i32 %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %26
  %41 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %42 = call i32 @_glfwInputError(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @GL_FALSE, align 4
  store i32 %43, i32* %4, align 4
  br label %304

44:                                               ; preds = %26
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @choosePixelFormat(%struct.TYPE_16__* %45, i32* %46, i32* %9)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @GL_FALSE, align 4
  store i32 %50, i32* %4, align 4
  br label %304

51:                                               ; preds = %44
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @DescribePixelFormat(i32 %55, i32 %56, i32 4, i32* %10)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %61 = call i32 @_glfwInputError(i32 %60, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @GL_FALSE, align 4
  store i32 %62, i32* %4, align 4
  br label %304

63:                                               ; preds = %51
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @SetPixelFormat(i32 %67, i32 %68, i32* %10)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %73 = call i32 @_glfwInputError(i32 %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @GL_FALSE, align 4
  store i32 %74, i32* %4, align 4
  br label %304

75:                                               ; preds = %63
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %263

81:                                               ; preds = %75
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @GLFW_OPENGL_API, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %118

87:                                               ; preds = %81
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* @WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB, align 4
  %94 = load i32, i32* %14, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %92, %87
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @GLFW_OPENGL_CORE_PROFILE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* @WGL_CONTEXT_CORE_PROFILE_BIT_ARB, align 4
  %104 = load i32, i32* %13, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %13, align 4
  br label %117

106:                                              ; preds = %96
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @GLFW_OPENGL_COMPAT_PROFILE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i32, i32* @WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB, align 4
  %114 = load i32, i32* %13, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %112, %106
  br label %117

117:                                              ; preds = %116, %102
  br label %122

118:                                              ; preds = %81
  %119 = load i32, i32* @WGL_CONTEXT_ES2_PROFILE_BIT_EXT, align 4
  %120 = load i32, i32* %13, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %13, align 4
  br label %122

122:                                              ; preds = %118, %117
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, i32* @WGL_CONTEXT_DEBUG_BIT_ARB, align 4
  %129 = load i32, i32* %14, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %127, %122
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %168

136:                                              ; preds = %131
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %167

142:                                              ; preds = %136
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @GLFW_NO_RESET_NOTIFICATION, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load i32, i32* @WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB, align 4
  %150 = load i32, i32* @WGL_NO_RESET_NOTIFICATION_ARB, align 4
  %151 = call i32 @setWGLattrib(i32 %149, i32 %150)
  br label %163

152:                                              ; preds = %142
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @GLFW_LOSE_CONTEXT_ON_RESET, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load i32, i32* @WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB, align 4
  %160 = load i32, i32* @WGL_LOSE_CONTEXT_ON_RESET_ARB, align 4
  %161 = call i32 @setWGLattrib(i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %152
  br label %163

163:                                              ; preds = %162, %148
  %164 = load i32, i32* @WGL_CONTEXT_ROBUST_ACCESS_BIT_ARB, align 4
  %165 = load i32, i32* %14, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %14, align 4
  br label %167

167:                                              ; preds = %163, %136
  br label %168

168:                                              ; preds = %167, %131
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %202

173:                                              ; preds = %168
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %173
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @GLFW_RELEASE_BEHAVIOR_NONE, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %179
  %186 = load i32, i32* @WGL_CONTEXT_RELEASE_BEHAVIOR_ARB, align 4
  %187 = load i32, i32* @WGL_CONTEXT_RELEASE_BEHAVIOR_NONE_ARB, align 4
  %188 = call i32 @setWGLattrib(i32 %186, i32 %187)
  br label %200

189:                                              ; preds = %179
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @GLFW_RELEASE_BEHAVIOR_FLUSH, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load i32, i32* @WGL_CONTEXT_RELEASE_BEHAVIOR_ARB, align 4
  %197 = load i32, i32* @WGL_CONTEXT_RELEASE_BEHAVIOR_FLUSH_ARB, align 4
  %198 = call i32 @setWGLattrib(i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %195, %189
  br label %200

200:                                              ; preds = %199, %185
  br label %201

201:                                              ; preds = %200, %173
  br label %202

202:                                              ; preds = %201, %168
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 1
  br i1 %206, label %212, label %207

207:                                              ; preds = %202
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %207, %202
  %213 = load i32, i32* @WGL_CONTEXT_MAJOR_VERSION_ARB, align 4
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @setWGLattrib(i32 %213, i32 %216)
  %218 = load i32, i32* @WGL_CONTEXT_MINOR_VERSION_ARB, align 4
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @setWGLattrib(i32 %218, i32 %221)
  br label %223

223:                                              ; preds = %212, %207
  %224 = load i32, i32* %14, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i32, i32* @WGL_CONTEXT_FLAGS_ARB, align 4
  %228 = load i32, i32* %14, align 4
  %229 = call i32 @setWGLattrib(i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %226, %223
  %231 = load i32, i32* %13, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load i32, i32* @WGL_CONTEXT_PROFILE_MASK_ARB, align 4
  %235 = load i32, i32* %13, align 4
  %236 = call i32 @setWGLattrib(i32 %234, i32 %235)
  br label %237

237:                                              ; preds = %233, %230
  %238 = call i32 @setWGLattrib(i32 0, i32 0)
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 2
  %242 = load i64 (i32, i32*, i32*)*, i64 (i32, i32*, i32*)** %241, align 8
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32*, i32** %11, align 8
  %248 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %249 = call i64 %242(i32 %246, i32* %247, i32* %248)
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  store i64 %249, i64* %252, align 8
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %237
  %259 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %260 = call i32 @_glfwInputError(i32 %259, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %261 = load i32, i32* @GL_FALSE, align 4
  store i32 %261, i32* %4, align 4
  br label %304

262:                                              ; preds = %237
  br label %298

263:                                              ; preds = %75
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = call i64 @_glfw_wglCreateContext(i32 %267)
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 0
  store i64 %268, i64* %271, align 8
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %281, label %277

277:                                              ; preds = %263
  %278 = load i32, i32* @GLFW_VERSION_UNAVAILABLE, align 4
  %279 = call i32 @_glfwInputError(i32 %278, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %280 = load i32, i32* @GL_FALSE, align 4
  store i32 %280, i32* %4, align 4
  br label %304

281:                                              ; preds = %263
  %282 = load i32*, i32** %11, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %284, label %297

284:                                              ; preds = %281
  %285 = load i32*, i32** %11, align 8
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = call i32 @_glfw_wglShareLists(i32* %285, i64 %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %284
  %293 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %294 = call i32 @_glfwInputError(i32 %293, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %295 = load i32, i32* @GL_FALSE, align 4
  store i32 %295, i32* %4, align 4
  br label %304

296:                                              ; preds = %284
  br label %297

297:                                              ; preds = %296, %281
  br label %298

298:                                              ; preds = %297, %262
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %300 = call i32 @_glfwPlatformMakeContextCurrent(%struct.TYPE_16__* %299)
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %302 = call i32 @initWGLExtensions(%struct.TYPE_16__* %301)
  %303 = load i32, i32* @GL_TRUE, align 4
  store i32 %303, i32* %4, align 4
  br label %304

304:                                              ; preds = %298, %292, %277, %258, %71, %59, %49, %40
  %305 = load i32, i32* %4, align 4
  ret i32 %305
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @choosePixelFormat(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @DescribePixelFormat(i32, i32, i32, i32*) #1

declare dso_local i32 @SetPixelFormat(i32, i32, i32*) #1

declare dso_local i32 @setWGLattrib(i32, i32) #1

declare dso_local i64 @_glfw_wglCreateContext(i32) #1

declare dso_local i32 @_glfw_wglShareLists(i32*, i64) #1

declare dso_local i32 @_glfwPlatformMakeContextCurrent(%struct.TYPE_16__*) #1

declare dso_local i32 @initWGLExtensions(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
