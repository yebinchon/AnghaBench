; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removegrain.c_mode1112.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removegrain.c_mode1112.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)* @mode1112 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode1112(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load i32, i32* %10, align 4
  %22 = mul nsw i32 4, %21
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %14, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %15, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* %17, align 4
  %29 = add nsw i32 %27, %28
  %30 = mul nsw i32 2, %29
  %31 = add nsw i32 %22, %30
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %16, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %18, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = add nsw i32 %40, 8
  %42 = ashr i32 %41, 4
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %20, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
