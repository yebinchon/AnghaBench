; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_palettegen.c_color_hash.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_palettegen.c_color_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @color_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @color_hash(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 16
  %8 = load i32, i32* @NBITS, align 4
  %9 = shl i32 1, %8
  %10 = sub nsw i32 %9, 1
  %11 = and i32 %7, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 8
  %14 = load i32, i32* @NBITS, align 4
  %15 = shl i32 1, %14
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %13, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @NBITS, align 4
  %20 = shl i32 1, %19
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %18, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @NBITS, align 4
  %25 = mul nsw i32 %24, 2
  %26 = shl i32 %23, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @NBITS, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %26, %29
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %30, %31
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
