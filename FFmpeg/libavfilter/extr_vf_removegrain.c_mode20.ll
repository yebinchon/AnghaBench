; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removegrain.c_mode20.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removegrain.c_mode20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)* @mode20 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode20(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* %13, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %14, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* %15, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %16, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %17, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %18, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %19, align 4
  %39 = add nsw i32 %38, 4
  %40 = sdiv i32 %39, 9
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
