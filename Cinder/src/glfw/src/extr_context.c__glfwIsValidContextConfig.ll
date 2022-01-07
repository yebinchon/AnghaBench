; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_context.c__glfwIsValidContextConfig.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_context.c__glfwIsValidContextConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32, i32, i64 }

@GLFW_NATIVE_CONTEXT_API = common dso_local global i64 0, align 8
@GLFW_EGL_CONTEXT_API = common dso_local global i64 0, align 8
@GLFW_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid context creation API %i\00", align 1
@GLFW_FALSE = common dso_local global i32 0, align 4
@GLFW_NO_API = common dso_local global i64 0, align 8
@GLFW_OPENGL_API = common dso_local global i64 0, align 8
@GLFW_OPENGL_ES_API = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid client API %i\00", align 1
@GLFW_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid OpenGL version %i.%i\00", align 1
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i32 0, align 4
@GLFW_OPENGL_COMPAT_PROFILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Invalid OpenGL profile %i\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Context profiles are only defined for OpenGL version 3.2 and above\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"Forward-compatibility is only defined for OpenGL version 3.0 and above\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Invalid OpenGL ES version %i.%i\00", align 1
@GLFW_NO_RESET_NOTIFICATION = common dso_local global i32 0, align 4
@GLFW_LOSE_CONTEXT_ON_RESET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Invalid context robustness mode %i\00", align 1
@GLFW_RELEASE_BEHAVIOR_NONE = common dso_local global i32 0, align 4
@GLFW_RELEASE_BEHAVIOR_FLUSH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Invalid context release behavior %i\00", align 1
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwIsValidContextConfig(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @GLFW_NATIVE_CONTEXT_API, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @GLFW_EGL_CONTEXT_API, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %262

22:                                               ; preds = %9, %1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GLFW_NO_API, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GLFW_OPENGL_API, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %46, i32* %2, align 4
  br label %262

47:                                               ; preds = %34, %28, %22
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @GLFW_OPENGL_API, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %162

53:                                               ; preds = %47
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %93, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %93, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 5
  br i1 %72, label %93, label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %93, label %83

83:                                               ; preds = %78, %73
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %91, 3
  br i1 %92, label %93, label %103

93:                                               ; preds = %88, %78, %68, %58, %53
  %94 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %100)
  %102 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %102, i32* %2, align 4
  br label %262

103:                                              ; preds = %88, %83
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %147

108:                                              ; preds = %103
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @GLFW_OPENGL_CORE_PROFILE, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %108
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @GLFW_OPENGL_COMPAT_PROFILE, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %126, i32* %2, align 4
  br label %262

127:                                              ; preds = %114, %108
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp sle i32 %130, 2
  br i1 %131, label %142, label %132

132:                                              ; preds = %127
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %140, 2
  br i1 %141, label %142, label %146

142:                                              ; preds = %137, %127
  %143 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %144 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %143, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  %145 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %145, i32* %2, align 4
  br label %262

146:                                              ; preds = %137, %132
  br label %147

147:                                              ; preds = %146, %103
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 7
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp sle i32 %155, 2
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %159 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %158, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  %160 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %160, i32* %2, align 4
  br label %262

161:                                              ; preds = %152, %147
  br label %210

162:                                              ; preds = %47
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %209

168:                                              ; preds = %162
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %171, 1
  br i1 %172, label %198, label %173

173:                                              ; preds = %168
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %198, label %178

178:                                              ; preds = %173
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = icmp sgt i32 %186, 1
  br i1 %187, label %198, label %188

188:                                              ; preds = %183, %178
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp eq i32 %191, 2
  br i1 %192, label %193, label %208

193:                                              ; preds = %188
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %193, %183, %173, %168
  %199 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %199, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %202, i32 %205)
  %207 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %207, i32* %2, align 4
  br label %262

208:                                              ; preds = %193, %188
  br label %209

209:                                              ; preds = %208, %162
  br label %210

210:                                              ; preds = %209, %161
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %235

215:                                              ; preds = %210
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @GLFW_NO_RESET_NOTIFICATION, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %221, label %234

221:                                              ; preds = %215
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @GLFW_LOSE_CONTEXT_ON_RESET, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %234

227:                                              ; preds = %221
  %228 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %228, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %233, i32* %2, align 4
  br label %262

234:                                              ; preds = %221, %215
  br label %235

235:                                              ; preds = %234, %210
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %260

240:                                              ; preds = %235
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @GLFW_RELEASE_BEHAVIOR_NONE, align 4
  %245 = icmp ne i32 %243, %244
  br i1 %245, label %246, label %259

246:                                              ; preds = %240
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @GLFW_RELEASE_BEHAVIOR_FLUSH, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %259

252:                                              ; preds = %246
  %253 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 6
  %256 = load i32, i32* %255, align 8
  %257 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %253, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %256)
  %258 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %258, i32* %2, align 4
  br label %262

259:                                              ; preds = %246, %240
  br label %260

260:                                              ; preds = %259, %235
  %261 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %261, i32* %2, align 4
  br label %262

262:                                              ; preds = %260, %252, %227, %198, %157, %142, %120, %93, %40, %15
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
