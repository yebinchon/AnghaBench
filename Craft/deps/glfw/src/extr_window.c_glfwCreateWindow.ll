; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_window.c_glfwCreateWindow.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_window.c_glfwCreateWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__, %struct.TYPE_27__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_26__, %struct.TYPE_29__, %struct.TYPE_28__ }
%struct.TYPE_26__ = type { i32, i32, i8*, i8*, i8*, i32*, i32, i32, i32, i8* }
%struct.TYPE_29__ = type { %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i32 (i32)*, i32, i32, i32, i32, i8*, i32*, %struct.TYPE_23__, %struct.TYPE_27__* }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32 }

@GLFW_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid window size\00", align 1
@_glfw = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@GL_TRUE = common dso_local global i8* null, align 8
@GLFW_CURSOR_NORMAL = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @glfwCreateWindow(i32 %0, i32 %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_28__, align 4
  %13 = alloca %struct.TYPE_29__, align 8
  %14 = alloca %struct.TYPE_26__, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = call i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32* null)
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %5
  %26 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %27 = call i32 @_glfwInputError(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %6, align 8
  br label %194

28:                                               ; preds = %22
  %29 = bitcast %struct.TYPE_28__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 8 bitcast (%struct.TYPE_28__* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @_glfw, i32 0, i32 0, i32 3) to i8*), i64 12, i1 false)
  %30 = bitcast %struct.TYPE_29__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 bitcast (%struct.TYPE_29__* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @_glfw, i32 0, i32 0, i32 2) to i8*), i64 8, i1 false)
  %31 = bitcast %struct.TYPE_26__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 bitcast (%struct.TYPE_26__* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @_glfw, i32 0, i32 0, i32 1) to i8*), i64 64, i1 false)
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 2
  store i8* %36, i8** %37, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 5
  store i32* %38, i32** %39, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = bitcast i32* %40 to %struct.TYPE_27__*
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  store %struct.TYPE_27__* %41, %struct.TYPE_27__** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %28
  %47 = load i8*, i8** @GL_TRUE, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 9
  store i8* %47, i8** %48, align 8
  %49 = load i8*, i8** @GL_TRUE, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 4
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** @GL_TRUE, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 3
  store i8* %51, i8** %52, align 8
  br label %53

53:                                               ; preds = %46, %28
  %54 = call i32 @_glfwIsValidContextConfig(%struct.TYPE_29__* %13)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i32* null, i32** %6, align 8
  br label %194

57:                                               ; preds = %53
  %58 = call %struct.TYPE_27__* @calloc(i32 1, i32 80)
  store %struct.TYPE_27__* %58, %struct.TYPE_27__** %15, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @_glfw, i32 0, i32 1), align 8
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 10
  store %struct.TYPE_27__* %59, %struct.TYPE_27__** %61, align 8
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  store %struct.TYPE_27__* %62, %struct.TYPE_27__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @_glfw, i32 0, i32 1), align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 9
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 9
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 9
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 5
  store i32 %72, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 9
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 4
  store i32 %77, i32* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 9
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @_glfw, i32 0, i32 0, i32 0), align 8
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 9
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 8
  store i32* %91, i32** %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 9
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 7
  store i8* %95, i8** %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 8
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @GLFW_CURSOR_NORMAL, align 4
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 8
  %113 = call %struct.TYPE_27__* (...) @_glfwPlatformGetCurrentContext()
  store %struct.TYPE_27__* %113, %struct.TYPE_27__** %16, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %115 = call i32 @_glfwPlatformCreateWindow(%struct.TYPE_27__* %114, %struct.TYPE_26__* %14, %struct.TYPE_29__* %13, %struct.TYPE_28__* %12)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %57
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %119 = bitcast %struct.TYPE_27__* %118 to i32*
  %120 = call i32 @glfwDestroyWindow(i32* %119)
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %122 = call i32 @_glfwPlatformMakeContextCurrent(%struct.TYPE_27__* %121)
  store i32* null, i32** %6, align 8
  br label %194

123:                                              ; preds = %57
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %125 = call i32 @_glfwPlatformMakeContextCurrent(%struct.TYPE_27__* %124)
  %126 = call i32 @_glfwRefreshContextAttribs(%struct.TYPE_29__* %13)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %123
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %130 = bitcast %struct.TYPE_27__* %129 to i32*
  %131 = call i32 @glfwDestroyWindow(i32* %130)
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %133 = call i32 @_glfwPlatformMakeContextCurrent(%struct.TYPE_27__* %132)
  store i32* null, i32** %6, align 8
  br label %194

134:                                              ; preds = %123
  %135 = call i32 @_glfwIsValidContext(%struct.TYPE_29__* %13)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %139 = bitcast %struct.TYPE_27__* %138 to i32*
  %140 = call i32 @glfwDestroyWindow(i32* %139)
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %142 = call i32 @_glfwPlatformMakeContextCurrent(%struct.TYPE_27__* %141)
  store i32* null, i32** %6, align 8
  br label %194

143:                                              ; preds = %134
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 2
  %146 = load i32 (i32)*, i32 (i32)** %145, align 8
  %147 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %148 = call i32 %146(i32 %147)
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %150 = call i32 @_glfwPlatformSwapBuffers(%struct.TYPE_27__* %149)
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %152 = call i32 @_glfwPlatformMakeContextCurrent(%struct.TYPE_27__* %151)
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 5
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %175

156:                                              ; preds = %143
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %158 = call i32 @_glfwPlatformGetWindowSize(%struct.TYPE_27__* %157, i32* %17, i32* %18)
  %159 = load i32, i32* %17, align 4
  %160 = sdiv i32 %159, 2
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* %18, align 4
  %164 = sdiv i32 %163, 2
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @_glfwPlatformSetCursorPos(%struct.TYPE_27__* %167, i32 %170, i32 %173)
  br label %191

175:                                              ; preds = %143
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 4
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %190

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 3
  %181 = load i8*, i8** %180, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %185 = call i32 @_glfwPlatformShowWindow(%struct.TYPE_27__* %184)
  br label %189

186:                                              ; preds = %179
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %188 = call i32 @_glfwPlatformUnhideWindow(%struct.TYPE_27__* %187)
  br label %189

189:                                              ; preds = %186, %183
  br label %190

190:                                              ; preds = %189, %175
  br label %191

191:                                              ; preds = %190, %156
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %193 = bitcast %struct.TYPE_27__* %192 to i32*
  store i32* %193, i32** %6, align 8
  br label %194

194:                                              ; preds = %191, %137, %128, %117, %56, %25
  %195 = load i32*, i32** %6, align 8
  ret i32* %195
}

declare dso_local i32 @_GLFW_REQUIRE_INIT_OR_RETURN(i32*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_glfwIsValidContextConfig(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_27__* @calloc(i32, i32) #1

declare dso_local %struct.TYPE_27__* @_glfwPlatformGetCurrentContext(...) #1

declare dso_local i32 @_glfwPlatformCreateWindow(%struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i32 @glfwDestroyWindow(i32*) #1

declare dso_local i32 @_glfwPlatformMakeContextCurrent(%struct.TYPE_27__*) #1

declare dso_local i32 @_glfwRefreshContextAttribs(%struct.TYPE_29__*) #1

declare dso_local i32 @_glfwIsValidContext(%struct.TYPE_29__*) #1

declare dso_local i32 @_glfwPlatformSwapBuffers(%struct.TYPE_27__*) #1

declare dso_local i32 @_glfwPlatformGetWindowSize(%struct.TYPE_27__*, i32*, i32*) #1

declare dso_local i32 @_glfwPlatformSetCursorPos(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @_glfwPlatformShowWindow(%struct.TYPE_27__*) #1

declare dso_local i32 @_glfwPlatformUnhideWindow(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
