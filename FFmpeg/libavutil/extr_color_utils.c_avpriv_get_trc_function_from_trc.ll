; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_color_utils.c_avpriv_get_trc_function_from_trc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_color_utils.c_avpriv_get_trc_function_from_trc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@avpriv_trc_bt709 = common dso_local global i32* null, align 8
@avpriv_trc_gamma22 = common dso_local global i32* null, align 8
@avpriv_trc_gamma28 = common dso_local global i32* null, align 8
@avpriv_trc_smpte240M = common dso_local global i32* null, align 8
@avpriv_trc_linear = common dso_local global i32* null, align 8
@avpriv_trc_log = common dso_local global i32* null, align 8
@avpriv_trc_log_sqrt = common dso_local global i32* null, align 8
@avpriv_trc_iec61966_2_4 = common dso_local global i32* null, align 8
@avpriv_trc_bt1361 = common dso_local global i32* null, align 8
@avpriv_trc_iec61966_2_1 = common dso_local global i32* null, align 8
@avpriv_trc_smpte_st2084 = common dso_local global i32* null, align 8
@avpriv_trc_smpte_st428_1 = common dso_local global i32* null, align 8
@avpriv_trc_arib_std_b67 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @avpriv_get_trc_function_from_trc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %32 [
    i32 142, label %5
    i32 132, label %5
    i32 144, label %5
    i32 143, label %5
    i32 141, label %7
    i32 140, label %9
    i32 131, label %11
    i32 137, label %13
    i32 136, label %15
    i32 135, label %17
    i32 138, label %19
    i32 145, label %21
    i32 139, label %23
    i32 130, label %25
    i32 129, label %27
    i32 146, label %29
    i32 133, label %31
    i32 128, label %31
    i32 134, label %31
  ]

5:                                                ; preds = %1, %1, %1, %1
  %6 = load i32*, i32** @avpriv_trc_bt709, align 8
  store i32* %6, i32** %3, align 8
  br label %33

7:                                                ; preds = %1
  %8 = load i32*, i32** @avpriv_trc_gamma22, align 8
  store i32* %8, i32** %3, align 8
  br label %33

9:                                                ; preds = %1
  %10 = load i32*, i32** @avpriv_trc_gamma28, align 8
  store i32* %10, i32** %3, align 8
  br label %33

11:                                               ; preds = %1
  %12 = load i32*, i32** @avpriv_trc_smpte240M, align 8
  store i32* %12, i32** %3, align 8
  br label %33

13:                                               ; preds = %1
  %14 = load i32*, i32** @avpriv_trc_linear, align 8
  store i32* %14, i32** %3, align 8
  br label %33

15:                                               ; preds = %1
  %16 = load i32*, i32** @avpriv_trc_log, align 8
  store i32* %16, i32** %3, align 8
  br label %33

17:                                               ; preds = %1
  %18 = load i32*, i32** @avpriv_trc_log_sqrt, align 8
  store i32* %18, i32** %3, align 8
  br label %33

19:                                               ; preds = %1
  %20 = load i32*, i32** @avpriv_trc_iec61966_2_4, align 8
  store i32* %20, i32** %3, align 8
  br label %33

21:                                               ; preds = %1
  %22 = load i32*, i32** @avpriv_trc_bt1361, align 8
  store i32* %22, i32** %3, align 8
  br label %33

23:                                               ; preds = %1
  %24 = load i32*, i32** @avpriv_trc_iec61966_2_1, align 8
  store i32* %24, i32** %3, align 8
  br label %33

25:                                               ; preds = %1
  %26 = load i32*, i32** @avpriv_trc_smpte_st2084, align 8
  store i32* %26, i32** %3, align 8
  br label %33

27:                                               ; preds = %1
  %28 = load i32*, i32** @avpriv_trc_smpte_st428_1, align 8
  store i32* %28, i32** %3, align 8
  br label %33

29:                                               ; preds = %1
  %30 = load i32*, i32** @avpriv_trc_arib_std_b67, align 8
  store i32* %30, i32** %3, align 8
  br label %33

31:                                               ; preds = %1, %1, %1
  br label %32

32:                                               ; preds = %1, %31
  br label %33

33:                                               ; preds = %32, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
