; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudio.c_ff_mpa_l2_select_table.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudio.c_ff_mpa_l2_select_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mpa_l2_select_table(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 48000
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %9, align 4
  %21 = icmp sge i32 %20, 56
  br i1 %21, label %28, label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %9, align 4
  %24 = icmp sge i32 %23, 56
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = icmp sle i32 %26, 80
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %19
  store i32 0, i32* %10, align 4
  br label %46

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 48000
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = icmp sge i32 %33, 96
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  br label %45

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 32000
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = icmp sle i32 %40, 48
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 2, i32* %10, align 4
  br label %44

43:                                               ; preds = %39, %36
  store i32 3, i32* %10, align 4
  br label %44

44:                                               ; preds = %43, %42
  br label %45

45:                                               ; preds = %44, %35
  br label %46

46:                                               ; preds = %45, %28
  br label %48

47:                                               ; preds = %4
  store i32 4, i32* %10, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i32, i32* %10, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
