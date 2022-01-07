; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_triangle/extr_triangle.c_redraw_scene.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_triangle/extr_triangle.c_redraw_scene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @redraw_scene to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redraw_scene(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %4 = call i32 @glClear(i32 %3)
  %5 = load i32, i32* @GL_TEXTURE_2D, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @glBindTexture(i32 %5, i32 %10)
  %12 = call i32 @glRotatef(float 2.700000e+02, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %13 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %14 = call i32 @glDrawArrays(i32 %13, i32 0, i32 4)
  %15 = load i32, i32* @GL_TEXTURE_2D, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @glBindTexture(i32 %15, i32 %20)
  %22 = call i32 @glRotatef(float 9.000000e+01, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %23 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %24 = call i32 @glDrawArrays(i32 %23, i32 4, i32 4)
  %25 = load i32, i32* @GL_TEXTURE_2D, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @glBindTexture(i32 %25, i32 %30)
  %32 = call i32 @glRotatef(float 9.000000e+01, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %33 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %34 = call i32 @glDrawArrays(i32 %33, i32 8, i32 4)
  %35 = load i32, i32* @GL_TEXTURE_2D, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @glBindTexture(i32 %35, i32 %40)
  %42 = call i32 @glRotatef(float 9.000000e+01, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %43 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %44 = call i32 @glDrawArrays(i32 %43, i32 12, i32 4)
  %45 = load i32, i32* @GL_TEXTURE_2D, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @glBindTexture(i32 %45, i32 %50)
  %52 = call i32 @glRotatef(float 2.700000e+02, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)
  %53 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %54 = call i32 @glDrawArrays(i32 %53, i32 16, i32 4)
  %55 = load i32, i32* @GL_TEXTURE_2D, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @glBindTexture(i32 %55, i32 %60)
  %62 = call i32 @glRotatef(float 9.000000e+01, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)
  %63 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %64 = call i32 @glDrawArrays(i32 %63, i32 20, i32 4)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @eglSwapBuffers(i32 %67, i32 %70)
  ret void
}

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glRotatef(float, float, float, float) #1

declare dso_local i32 @glDrawArrays(i32, i32, i32) #1

declare dso_local i32 @eglSwapBuffers(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
