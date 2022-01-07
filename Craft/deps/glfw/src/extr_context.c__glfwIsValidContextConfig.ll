; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_context.c__glfwIsValidContextConfig.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_context.c__glfwIsValidContextConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i64, i64, i64, i64 }

@GLFW_OPENGL_API = common dso_local global i64 0, align 8
@GLFW_OPENGL_ES_API = common dso_local global i64 0, align 8
@GLFW_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid client API\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@GLFW_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid OpenGL version %i.%i\00", align 1
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i64 0, align 8
@GLFW_OPENGL_COMPAT_PROFILE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid OpenGL profile\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"Context profiles are only defined for OpenGL version 3.2 and above\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"Forward-compatibility is only defined for OpenGL version 3.0 and above\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Invalid OpenGL ES version %i.%i\00", align 1
@GLFW_NO_RESET_NOTIFICATION = common dso_local global i64 0, align 8
@GLFW_LOSE_CONTEXT_ON_RESET = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"Invalid context robustness mode\00", align 1
@GLFW_RELEASE_BEHAVIOR_NONE = common dso_local global i64 0, align 8
@GLFW_RELEASE_BEHAVIOR_FLUSH = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [33 x i8] c"Invalid context release behavior\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwIsValidContextConfig(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @GLFW_OPENGL_API, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %17 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @GL_FALSE, align 4
  store i32 %18, i32* %2, align 4
  br label %225

19:                                               ; preds = %9, %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GLFW_OPENGL_API, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %131

25:                                               ; preds = %19
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %65, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %65, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 5
  br i1 %44, label %65, label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %65, label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 3
  br i1 %64, label %65, label %75

65:                                               ; preds = %60, %50, %40, %30, %25
  %66 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load i32, i32* @GL_FALSE, align 4
  store i32 %74, i32* %2, align 4
  br label %225

75:                                               ; preds = %60, %55
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %116

80:                                               ; preds = %75
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @GLFW_OPENGL_CORE_PROFILE, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %80
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @GLFW_OPENGL_COMPAT_PROFILE, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %94 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @GL_FALSE, align 4
  store i32 %95, i32* %2, align 4
  br label %225

96:                                               ; preds = %86, %80
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %99, 3
  br i1 %100, label %111, label %101

101:                                              ; preds = %96
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 3
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %109, 2
  br i1 %110, label %111, label %115

111:                                              ; preds = %106, %96
  %112 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %113 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %112, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i32, i32* @GL_FALSE, align 4
  store i32 %114, i32* %2, align 4
  br label %225

115:                                              ; preds = %106, %101
  br label %116

116:                                              ; preds = %115, %75
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %124, 3
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %128 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %127, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i32, i32* @GL_FALSE, align 4
  store i32 %129, i32* %2, align 4
  br label %225

130:                                              ; preds = %121, %116
  br label %179

131:                                              ; preds = %19
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @GLFW_OPENGL_ES_API, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %178

137:                                              ; preds = %131
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %140, 1
  br i1 %141, label %167, label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %167, label %147

147:                                              ; preds = %142
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = icmp sgt i32 %155, 1
  br i1 %156, label %167, label %157

157:                                              ; preds = %152, %147
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 2
  br i1 %161, label %162, label %177

162:                                              ; preds = %157
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %162, %152, %142, %137
  %168 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %171, i32 %174)
  %176 = load i32, i32* @GL_FALSE, align 4
  store i32 %176, i32* %2, align 4
  br label %225

177:                                              ; preds = %162, %157
  br label %178

178:                                              ; preds = %177, %131
  br label %179

179:                                              ; preds = %178, %130
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %201

184:                                              ; preds = %179
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @GLFW_NO_RESET_NOTIFICATION, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %200

190:                                              ; preds = %184
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @GLFW_LOSE_CONTEXT_ON_RESET, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %198 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %197, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %199 = load i32, i32* @GL_FALSE, align 4
  store i32 %199, i32* %2, align 4
  br label %225

200:                                              ; preds = %190, %184
  br label %201

201:                                              ; preds = %200, %179
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %223

206:                                              ; preds = %201
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 5
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @GLFW_RELEASE_BEHAVIOR_NONE, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %222

212:                                              ; preds = %206
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @GLFW_RELEASE_BEHAVIOR_FLUSH, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load i32, i32* @GLFW_INVALID_ENUM, align 4
  %220 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %219, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %221 = load i32, i32* @GL_FALSE, align 4
  store i32 %221, i32* %2, align 4
  br label %225

222:                                              ; preds = %212, %206
  br label %223

223:                                              ; preds = %222, %201
  %224 = load i32, i32* @GL_TRUE, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %223, %218, %196, %167, %126, %111, %92, %65, %15
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
