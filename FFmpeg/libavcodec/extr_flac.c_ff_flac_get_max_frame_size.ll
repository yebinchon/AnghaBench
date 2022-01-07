; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac.c_ff_flac_get_max_frame_size.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac.c_ff_flac_get_max_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_flac_get_max_frame_size(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 16, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 7, %9
  %11 = add nsw i32 %10, 7
  %12 = sdiv i32 %11, 8
  %13 = mul nsw i32 %8, %12
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 2, %19
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 %21, %22
  %24 = add nsw i32 %23, 7
  %25 = sdiv i32 %24, 8
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %38

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = mul nsw i32 %31, %32
  %34 = add nsw i32 %33, 7
  %35 = sdiv i32 %34, 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %28, %18
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 2
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
