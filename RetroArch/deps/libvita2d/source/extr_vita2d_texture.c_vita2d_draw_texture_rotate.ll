; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_vita2d_draw_texture_rotate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_vita2d_draw_texture_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vita2d_draw_texture_rotate(i32* %0, float %1, float %2, float %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load float, float* %6, align 4
  %11 = load float, float* %7, align 4
  %12 = load float, float* %8, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call float @vita2d_texture_get_width(i32* %13)
  %15 = fdiv float %14, 2.000000e+00
  %16 = load i32*, i32** %5, align 8
  %17 = call float @vita2d_texture_get_height(i32* %16)
  %18 = fdiv float %17, 2.000000e+00
  %19 = call i32 @vita2d_draw_texture_rotate_hotspot(i32* %9, float %10, float %11, float %12, float %15, float %18)
  ret void
}

declare dso_local i32 @vita2d_draw_texture_rotate_hotspot(i32*, float, float, float, float, float) #1

declare dso_local float @vita2d_texture_get_width(i32*) #1

declare dso_local float @vita2d_texture_get_height(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
