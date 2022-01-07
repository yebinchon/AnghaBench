; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_sample_rate_idx.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_sample_rate_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sample_rate_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sample_rate_idx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 92017, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 75132, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %48

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp sle i32 55426, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 2, i32* %2, align 4
  br label %48

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 46009, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 3, i32* %2, align 4
  br label %48

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp sle i32 37566, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 4, i32* %2, align 4
  br label %48

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp sle i32 27713, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 5, i32* %2, align 4
  br label %48

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = icmp sle i32 23004, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 6, i32* %2, align 4
  br label %48

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = icmp sle i32 18783, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 7, i32* %2, align 4
  br label %48

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = icmp sle i32 13856, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 8, i32* %2, align 4
  br label %48

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = icmp sle i32 11502, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 9, i32* %2, align 4
  br label %48

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = icmp sle i32 9391, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 10, i32* %2, align 4
  br label %48

47:                                               ; preds = %43
  store i32 11, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
