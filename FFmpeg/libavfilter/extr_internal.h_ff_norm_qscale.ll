; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_internal.h_ff_norm_qscale.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_internal.h_ff_norm_qscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ff_norm_qscale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_norm_qscale(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %20 [
    i32 130, label %7
    i32 129, label %9
    i32 131, label %12
    i32 128, label %15
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %3, align 4
  br label %22

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 1
  store i32 %11, i32* %3, align 4
  br label %22

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 2
  store i32 %14, i32* %3, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 63, %16
  %18 = add nsw i32 %17, 2
  %19 = ashr i32 %18, 2
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %15, %12, %9, %7
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
