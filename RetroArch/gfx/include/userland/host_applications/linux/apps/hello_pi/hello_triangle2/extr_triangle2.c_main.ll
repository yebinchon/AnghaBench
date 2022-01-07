; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_triangle2/extr_triangle2.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_triangle2/extr_triangle2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@state = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %8 = call i32 (...) @bcm_host_init()
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %10 = call i32 @memset(%struct.TYPE_8__* %9, i32 0, i32 8)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %12 = call i32 @init_ogl(%struct.TYPE_8__* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %14 = call i32 @init_shaders(%struct.TYPE_8__* %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 2
  store i32 %18, i32* %3, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %4, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @draw_mandelbrot_to_texture(%struct.TYPE_8__* %23, i32 %24, i32 %25, double 3.000000e-03)
  br label %27

27:                                               ; preds = %37, %0
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %33 = call i32 @get_mouse(%struct.TYPE_8__* %32, i32* %5, i32* %6)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %44

37:                                               ; preds = %31
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @state, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @draw_triangles(%struct.TYPE_8__* %38, i32 %39, i32 %40, double 3.000000e-03, i32 %41, i32 %42)
  br label %27

44:                                               ; preds = %36, %27
  ret i32 0
}

declare dso_local i32 @bcm_host_init(...) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @init_ogl(%struct.TYPE_8__*) #1

declare dso_local i32 @init_shaders(%struct.TYPE_8__*) #1

declare dso_local i32 @draw_mandelbrot_to_texture(%struct.TYPE_8__*, i32, i32, double) #1

declare dso_local i32 @get_mouse(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @draw_triangles(%struct.TYPE_8__*, i32, i32, double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
