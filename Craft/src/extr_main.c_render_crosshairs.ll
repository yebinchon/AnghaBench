; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_render_crosshairs.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_render_crosshairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@g = common dso_local global %struct.TYPE_6__* null, align 8
@GL_COLOR_LOGIC_OP = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_crosshairs(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca [16 x float], align 16
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds [16 x float], [16 x float]* %3, i64 0, i64 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @set_matrix_2d(float* %5, i32 %8, i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @glUseProgram(i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 4, %19
  %21 = call i32 @glLineWidth(i32 %20)
  %22 = load i32, i32* @GL_COLOR_LOGIC_OP, align 4
  %23 = call i32 @glEnable(i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GL_FALSE, align 4
  %28 = getelementptr inbounds [16 x float], [16 x float]* %3, i64 0, i64 0
  %29 = call i32 @glUniformMatrix4fv(i32 %26, i32 1, i32 %27, float* %28)
  %30 = call i32 (...) @gen_crosshair_buffer()
  store i32 %30, i32* %4, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @draw_lines(%struct.TYPE_5__* %31, i32 %32, i32 2, i32 4)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @del_buffer(i32 %34)
  %36 = load i32, i32* @GL_COLOR_LOGIC_OP, align 4
  %37 = call i32 @glDisable(i32 %36)
  ret void
}

declare dso_local i32 @set_matrix_2d(float*, i32, i32) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @glLineWidth(i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glUniformMatrix4fv(i32, i32, i32, float*) #1

declare dso_local i32 @gen_crosshair_buffer(...) #1

declare dso_local i32 @draw_lines(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @del_buffer(i32) #1

declare dso_local i32 @glDisable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
