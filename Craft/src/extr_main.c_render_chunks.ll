; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_render_chunks.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_render_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, float, i32, %struct.TYPE_14__*, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }

@g = common dso_local global %struct.TYPE_16__* null, align 8
@GL_FALSE = common dso_local global i32 0, align 4
@CHUNK_SIZE = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @render_chunks(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca [16 x float], align 16
  %11 = alloca [6 x [4 x float]], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %6, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = call i32 @ensure_chunks(%struct.TYPE_13__* %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @chunked(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @chunked(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = call float (...) @get_daylight()
  store float %26, float* %9, align 4
  %27 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 0
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load float, float* %56, align 4
  %58 = call i32 @set_matrix_3d(float* %27, i32 %30, i32 %33, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %51, i32 %54, float %57)
  %59 = getelementptr inbounds [6 x [4 x float]], [6 x [4 x float]]* %11, i64 0, i64 0
  %60 = bitcast [4 x float]* %59 to float**
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load float, float* %62, align 4
  %64 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 0
  %65 = call i32 @frustum_planes(float** %60, float %63, float* %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @glUseProgram(i32 %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @GL_FALSE, align 4
  %74 = getelementptr inbounds [16 x float], [16 x float]* %10, i64 0, i64 0
  %75 = call i32 @glUniformMatrix4fv(i32 %72, i32 1, i32 %73, float* %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @glUniform3f(i32 %78, i32 %81, i32 %84, i32 %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @glUniform1i(i32 %91, i32 0)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @glUniform1i(i32 %95, i32 2)
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load float, float* %9, align 4
  %101 = call i32 @glUniform1f(i32 %99, float %100)
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load float, float* %106, align 4
  %108 = load float, float* @CHUNK_SIZE, align 4
  %109 = fmul float %107, %108
  %110 = call i32 @glUniform1f(i32 %104, float %109)
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @glUniform1i(i32 %113, i32 %116)
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call float (...) @time_of_day()
  %122 = call i32 @glUniform1f(i32 %120, float %121)
  store i32 0, i32* %12, align 4
  br label %123

123:                                              ; preds = %174, %2
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %177

129:                                              ; preds = %123
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i64 %134
  store %struct.TYPE_14__* %135, %struct.TYPE_14__** %13, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call float @chunk_distance(%struct.TYPE_14__* %136, i32 %137, i32 %138)
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load float, float* %141, align 4
  %143 = fcmp ogt float %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %129
  br label %174

145:                                              ; preds = %129
  %146 = getelementptr inbounds [6 x [4 x float]], [6 x [4 x float]]* %11, i64 0, i64 0
  %147 = bitcast [4 x float]* %146 to float**
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @chunk_visible(float** %147, i32 %150, i32 %153, i32 %156, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %145
  br label %174

163:                                              ; preds = %145
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %166 = call i32 @draw_chunk(%struct.TYPE_15__* %164, %struct.TYPE_14__* %165)
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %163, %162, %144
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %123

177:                                              ; preds = %123
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i32 @ensure_chunks(%struct.TYPE_13__*) #1

declare dso_local i32 @chunked(i32) #1

declare dso_local float @get_daylight(...) #1

declare dso_local i32 @set_matrix_3d(float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, float) #1

declare dso_local i32 @frustum_planes(float**, float, float*) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @glUniformMatrix4fv(i32, i32, i32, float*) #1

declare dso_local i32 @glUniform3f(i32, i32, i32, i32) #1

declare dso_local i32 @glUniform1i(i32, i32) #1

declare dso_local i32 @glUniform1f(i32, float) #1

declare dso_local float @time_of_day(...) #1

declare dso_local float @chunk_distance(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @chunk_visible(float**, i32, i32, i32, i32) #1

declare dso_local i32 @draw_chunk(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
