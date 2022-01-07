; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_wave.c_draw_scene.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_wave.c_draw_scene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
@zoom = common dso_local global i32 0, align 4
@beta = common dso_local global i32 0, align 4
@alpha = common dso_local global i32 0, align 4
@GL_QUADS = common dso_local global i32 0, align 4
@QUADNUM = common dso_local global i32 0, align 4
@GL_UNSIGNED_INT = common dso_local global i32 0, align 4
@quad = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_scene(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %4 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @glClear(i32 %5)
  %7 = load i32, i32* @GL_MODELVIEW, align 4
  %8 = call i32 @glMatrixMode(i32 %7)
  %9 = call i32 (...) @glLoadIdentity()
  %10 = load i32, i32* @zoom, align 4
  %11 = sub nsw i32 0, %10
  %12 = call i32 @glTranslatef(double 0.000000e+00, double 0.000000e+00, i32 %11)
  %13 = load i32, i32* @beta, align 4
  %14 = call i32 @glRotatef(i32 %13, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %15 = load i32, i32* @alpha, align 4
  %16 = call i32 @glRotatef(i32 %15, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %17 = load i32, i32* @GL_QUADS, align 4
  %18 = load i32, i32* @QUADNUM, align 4
  %19 = mul nsw i32 4, %18
  %20 = load i32, i32* @GL_UNSIGNED_INT, align 4
  %21 = load i32, i32* @quad, align 4
  %22 = call i32 @glDrawElements(i32 %17, i32 %19, i32 %20, i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @glfwSwapBuffers(i32* %23)
  ret void
}

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i32 @glTranslatef(double, double, i32) #1

declare dso_local i32 @glRotatef(i32, double, double, double) #1

declare dso_local i32 @glDrawElements(i32, i32, i32, i32) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
