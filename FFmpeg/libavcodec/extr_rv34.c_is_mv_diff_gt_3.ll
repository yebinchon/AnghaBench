; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_is_mv_diff_gt_3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_is_mv_diff_gt_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ([2 x i32]*, i32)* @is_mv_diff_gt_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_mv_diff_gt_3([2 x i32]* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store [2 x i32]* %0, [2 x i32]** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load [2 x i32]*, [2 x i32]** %4, align 8
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load [2 x i32]*, [2 x i32]** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 0, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 %14
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %10, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, -3
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 3
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %2
  store i32 1, i32* %3, align 4
  br label %45

25:                                               ; preds = %21
  %26 = load [2 x i32]*, [2 x i32]** %4, align 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load [2 x i32]*, [2 x i32]** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 0, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 %33
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %34, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %29, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, -3
  br i1 %39, label %43, label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %25
  store i32 1, i32* %3, align 4
  br label %45

44:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43, %24
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
