; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_render_item.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_render_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@g = common dso_local global %struct.TYPE_7__* null, align 8
@GL_FALSE = common dso_local global i32 0, align 4
@items = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_item(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca [16 x float], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds [16 x float], [16 x float]* %3, i64 0, i64 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @set_matrix_item(float* %7, i32 %10, i32 %13, i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @glUseProgram(i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GL_FALSE, align 4
  %26 = getelementptr inbounds [16 x float], [16 x float]* %3, i64 0, i64 0
  %27 = call i32 @glUniformMatrix4fv(i32 %24, i32 1, i32 %25, float* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @glUniform3f(i32 %30, i32 0, i32 0, i32 5)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @glUniform1i(i32 %34, i32 0)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (...) @time_of_day()
  %40 = call i32 @glUniform1f(i32 %38, i32 %39)
  %41 = load i32*, i32** @items, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @is_plant(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %1
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @gen_plant_buffer(i32 0, i32 0, i32 0, double 5.000000e-01, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @draw_plant(%struct.TYPE_6__* %53, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @del_buffer(i32 %56)
  br label %66

58:                                               ; preds = %1
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @gen_cube_buffer(i32 0, i32 0, i32 0, double 5.000000e-01, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @draw_cube(%struct.TYPE_6__* %61, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @del_buffer(i32 %64)
  br label %66

66:                                               ; preds = %58, %50
  ret void
}

declare dso_local i32 @set_matrix_item(float*, i32, i32, i32) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @glUniformMatrix4fv(i32, i32, i32, float*) #1

declare dso_local i32 @glUniform3f(i32, i32, i32, i32) #1

declare dso_local i32 @glUniform1i(i32, i32) #1

declare dso_local i32 @glUniform1f(i32, i32) #1

declare dso_local i32 @time_of_day(...) #1

declare dso_local i64 @is_plant(i32) #1

declare dso_local i32 @gen_plant_buffer(i32, i32, i32, double, i32) #1

declare dso_local i32 @draw_plant(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @del_buffer(i32) #1

declare dso_local i32 @gen_cube_buffer(i32, i32, i32, double, i32) #1

declare dso_local i32 @draw_cube(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
