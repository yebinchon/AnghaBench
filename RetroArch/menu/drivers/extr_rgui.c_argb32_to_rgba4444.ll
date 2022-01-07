; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_argb32_to_rgba4444.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_argb32_to_rgba4444.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @argb32_to_rgba4444 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @argb32_to_rgba4444(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = ashr i32 %7, 24
  %9 = and i32 %8, 255
  %10 = ashr i32 %9, 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = ashr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = ashr i32 %13, 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %2, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = ashr i32 %17, 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 255
  %21 = ashr i32 %20, 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 %22, 12
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 8
  %26 = or i32 %23, %25
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 4
  %29 = or i32 %26, %28
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %29, %30
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
