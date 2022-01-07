; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvaudiodec.c_dv_audio_12to16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvaudiodec.c_dv_audio_12to16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dv_audio_12to16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dv_audio_12to16(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 2048
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  br label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = or i32 %10, 61440
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i32 [ %8, %7 ], [ %11, %9 ]
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, 3840
  %16 = ashr i32 %15, 8
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = icmp sgt i32 %20, 13
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %12
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %4, align 4
  br label %48

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %3, align 4
  %32 = mul nsw i32 256, %31
  %33 = sub nsw i32 %30, %32
  %34 = load i32, i32* %3, align 4
  %35 = shl i32 %33, %34
  store i32 %35, i32* %4, align 4
  br label %47

36:                                               ; preds = %24
  %37 = load i32, i32* %3, align 4
  %38 = sub nsw i32 14, %37
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %3, align 4
  %41 = mul nsw i32 256, %40
  %42 = add nsw i32 %41, 1
  %43 = add nsw i32 %39, %42
  %44 = load i32, i32* %3, align 4
  %45 = shl i32 %43, %44
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %36, %27
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
