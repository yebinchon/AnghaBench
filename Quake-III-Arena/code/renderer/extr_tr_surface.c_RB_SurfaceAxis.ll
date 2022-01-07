; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_surface.c_RB_SurfaceAxis.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_surface.c_RB_SurfaceAxis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@tr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GL_LINES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_SurfaceAxis() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tr, i32 0, i32 0), align 4
  %2 = call i32 @GL_Bind(i32 %1)
  %3 = call i32 @qglLineWidth(i32 3)
  %4 = load i32, i32* @GL_LINES, align 4
  %5 = call i32 @qglBegin(i32 %4)
  %6 = call i32 @qglColor3f(i32 1, i32 0, i32 0)
  %7 = call i32 @qglVertex3f(i32 0, i32 0, i32 0)
  %8 = call i32 @qglVertex3f(i32 16, i32 0, i32 0)
  %9 = call i32 @qglColor3f(i32 0, i32 1, i32 0)
  %10 = call i32 @qglVertex3f(i32 0, i32 0, i32 0)
  %11 = call i32 @qglVertex3f(i32 0, i32 16, i32 0)
  %12 = call i32 @qglColor3f(i32 0, i32 0, i32 1)
  %13 = call i32 @qglVertex3f(i32 0, i32 0, i32 0)
  %14 = call i32 @qglVertex3f(i32 0, i32 0, i32 16)
  %15 = call i32 (...) @qglEnd()
  %16 = call i32 @qglLineWidth(i32 1)
  ret void
}

declare dso_local i32 @GL_Bind(i32) #1

declare dso_local i32 @qglLineWidth(i32) #1

declare dso_local i32 @qglBegin(i32) #1

declare dso_local i32 @qglColor3f(i32, i32, i32) #1

declare dso_local i32 @qglVertex3f(i32, i32, i32) #1

declare dso_local i32 @qglEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
