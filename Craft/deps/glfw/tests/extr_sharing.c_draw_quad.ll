; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_sharing.c_draw_quad.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_sharing.c_draw_quad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_ENV = common dso_local global i32 0, align 4
@GL_TEXTURE_ENV_MODE = common dso_local global i32 0, align 4
@GL_MODULATE = common dso_local global i32 0, align 4
@GL_QUADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @draw_quad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_quad(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @glfwGetCurrentContext()
  %6 = call i32 @glfwGetFramebufferSize(i32 %5, i32* %3, i32* %4)
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @glViewport(i32 0, i32 0, i32 %7, i32 %8)
  %10 = load i32, i32* @GL_PROJECTION, align 4
  %11 = call i32 @glMatrixMode(i32 %10)
  %12 = call i32 (...) @glLoadIdentity()
  %13 = call i32 @glOrtho(float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %14 = load i32, i32* @GL_TEXTURE_2D, align 4
  %15 = call i32 @glEnable(i32 %14)
  %16 = load i32, i32* @GL_TEXTURE_2D, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @glBindTexture(i32 %16, i32 %17)
  %19 = load i32, i32* @GL_TEXTURE_ENV, align 4
  %20 = load i32, i32* @GL_TEXTURE_ENV_MODE, align 4
  %21 = load i32, i32* @GL_MODULATE, align 4
  %22 = call i32 @glTexEnvi(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @GL_QUADS, align 4
  %24 = call i32 @glBegin(i32 %23)
  %25 = call i32 @glTexCoord2f(float 0.000000e+00, float 0.000000e+00)
  %26 = call i32 @glVertex2f(float 0.000000e+00, float 0.000000e+00)
  %27 = call i32 @glTexCoord2f(float 1.000000e+00, float 0.000000e+00)
  %28 = call i32 @glVertex2f(float 1.000000e+00, float 0.000000e+00)
  %29 = call i32 @glTexCoord2f(float 1.000000e+00, float 1.000000e+00)
  %30 = call i32 @glVertex2f(float 1.000000e+00, float 1.000000e+00)
  %31 = call i32 @glTexCoord2f(float 0.000000e+00, float 1.000000e+00)
  %32 = call i32 @glVertex2f(float 0.000000e+00, float 1.000000e+00)
  %33 = call i32 (...) @glEnd()
  ret void
}

declare dso_local i32 @glfwGetFramebufferSize(i32, i32*, i32*) #1

declare dso_local i32 @glfwGetCurrentContext(...) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i32 @glOrtho(float, float, float, float, float, float) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glTexEnvi(i32, i32, i32) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @glTexCoord2f(float, float) #1

declare dso_local i32 @glVertex2f(float, float) #1

declare dso_local i32 @glEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
