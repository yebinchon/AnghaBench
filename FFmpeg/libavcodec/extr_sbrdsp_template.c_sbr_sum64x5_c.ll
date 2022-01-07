; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp_template.c_sbr_sum64x5_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp_template.c_sbr_sum64x5_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @sbr_sum64x5_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbr_sum64x5_c(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %47, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 64
  br i1 %7, label %8, label %50

8:                                                ; preds = %5
  %9 = load i64*, i64** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 64
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %13, %19
  %21 = load i64*, i64** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 128
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %20, %26
  %28 = load i64*, i64** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 192
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %27, %33
  %35 = load i64*, i64** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 256
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %34, %40
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64*, i64** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 %42, i64* %46, align 8
  br label %47

47:                                               ; preds = %8
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %5

50:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
