; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_paletteuse.c_dither_value.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_paletteuse.c_dither_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dither_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dither_value(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = ashr i32 %5, 3
  %7 = xor i32 %4, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 4
  %10 = ashr i32 %9, 2
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 4
  %13 = ashr i32 %12, 1
  %14 = or i32 %10, %13
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 2
  %17 = shl i32 %16, 1
  %18 = or i32 %14, %17
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 2
  %21 = shl i32 %20, 2
  %22 = or i32 %18, %21
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %23, 1
  %25 = shl i32 %24, 4
  %26 = or i32 %22, %25
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 1
  %29 = shl i32 %28, 5
  %30 = or i32 %26, %29
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
