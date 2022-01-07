; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_render_text.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_render_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@g = common dso_local global %struct.TYPE_6__* null, align 8
@GL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_text(%struct.TYPE_5__* %0, i32 %1, float %2, float %3, float %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [16 x float], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store i8* %5, i8** %12, align 8
  %16 = getelementptr inbounds [16 x float], [16 x float]* %13, i64 0, i64 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @set_matrix_2d(float* %16, i32 %19, i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @glUseProgram(i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GL_FALSE, align 4
  %32 = getelementptr inbounds [16 x float], [16 x float]* %13, i64 0, i64 0
  %33 = call i32 @glUniformMatrix4fv(i32 %30, i32 1, i32 %31, float* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @glUniform1i(i32 %36, i32 1)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @glUniform1i(i32 %40, i32 0)
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @strlen(i8* %42)
  store i32 %43, i32* %14, align 4
  %44 = load float, float* %11, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sitofp i32 %45 to float
  %47 = fmul float %44, %46
  %48 = load i32, i32* %14, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sitofp i32 %49 to float
  %51 = fmul float %47, %50
  %52 = fdiv float %51, 2.000000e+00
  %53 = load float, float* %9, align 4
  %54 = fsub float %53, %52
  store float %54, float* %9, align 4
  %55 = load float, float* %9, align 4
  %56 = load float, float* %10, align 4
  %57 = load float, float* %11, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @gen_text_buffer(float %55, float %56, float %57, i8* %58)
  store i32 %59, i32* %15, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @draw_text(%struct.TYPE_5__* %60, i32 %61, i32 %62)
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @del_buffer(i32 %64)
  ret void
}

declare dso_local i32 @set_matrix_2d(float*, i32, i32) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @glUniformMatrix4fv(i32, i32, i32, float*) #1

declare dso_local i32 @glUniform1i(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @gen_text_buffer(float, float, float, i8*) #1

declare dso_local i32 @draw_text(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @del_buffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
