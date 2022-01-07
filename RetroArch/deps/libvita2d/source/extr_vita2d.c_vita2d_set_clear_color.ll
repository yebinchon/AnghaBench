; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d.c_vita2d_set_clear_color.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d.c_vita2d_set_clear_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clear_color = common dso_local global i32* null, align 8
@clear_color_u = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vita2d_set_clear_color(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = lshr i32 %3, 0
  %5 = and i32 %4, 255
  %6 = uitofp i32 %5 to float
  %7 = fdiv float %6, 2.550000e+02
  %8 = fptoui float %7 to i32
  %9 = load i32*, i32** @clear_color, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %2, align 4
  %12 = lshr i32 %11, 8
  %13 = and i32 %12, 255
  %14 = uitofp i32 %13 to float
  %15 = fdiv float %14, 2.550000e+02
  %16 = fptoui float %15 to i32
  %17 = load i32*, i32** @clear_color, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %2, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = uitofp i32 %21 to float
  %23 = fdiv float %22, 2.550000e+02
  %24 = fptoui float %23 to i32
  %25 = load i32*, i32** @clear_color, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %2, align 4
  %28 = lshr i32 %27, 24
  %29 = and i32 %28, 255
  %30 = uitofp i32 %29 to float
  %31 = fdiv float %30, 2.550000e+02
  %32 = fptoui float %31 to i32
  %33 = load i32*, i32** @clear_color, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %2, align 4
  store i32 %35, i32* @clear_color_u, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
