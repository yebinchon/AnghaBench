; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_cmd.c_BigLong.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_cmd.c_BigLong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BigLong(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 255
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = ashr i32 %9, 8
  %11 = and i32 %10, 255
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 16
  %14 = and i32 %13, 255
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %2, align 4
  %16 = ashr i32 %15, 24
  %17 = and i32 %16, 255
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 %18, 24
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 %20, 16
  %22 = add nsw i32 %19, %21
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %23, 8
  %25 = add nsw i32 %22, %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
