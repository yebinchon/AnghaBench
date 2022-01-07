; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_mixdown_has_codec_support.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_mixdown_has_codec_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@HB_AMIXDOWN_NONE = common dso_local global i32 0, align 4
@HB_AMIXDOWN_7POINT1 = common dso_local global i32 0, align 4
@HB_AMIXDOWN_DOLBYPLII = common dso_local global i32 0, align 4
@HB_AMIXDOWN_5POINT1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_mixdown_has_codec_support(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @HB_AMIXDOWN_NONE, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  br label %48

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @HB_AMIXDOWN_NONE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %48

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %43 [
    i32 128, label %22
    i32 132, label %22
    i32 131, label %22
    i32 129, label %22
    i32 137, label %22
    i32 136, label %22
    i32 133, label %22
    i32 130, label %27
    i32 135, label %32
    i32 134, label %32
  ]

22:                                               ; preds = %20, %20, %20, %20, %20, %20, %20
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @HB_AMIXDOWN_7POINT1, align 4
  %25 = icmp sle i32 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %48

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @HB_AMIXDOWN_DOLBYPLII, align 4
  %30 = icmp sle i32 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %48

32:                                               ; preds = %20, %20
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @HB_AMIXDOWN_5POINT1, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @HB_AMIXDOWN_7POINT1, align 4
  %39 = icmp eq i32 %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ true, %32 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %20
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @HB_AMIXDOWN_5POINT1, align 4
  %46 = icmp sle i32 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %40, %27, %22, %19, %10
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
