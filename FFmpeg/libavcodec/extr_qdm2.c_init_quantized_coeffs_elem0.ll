; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdm2.c_init_quantized_coeffs_elem0.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdm2.c_init_quantized_coeffs_elem0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vlc_tab_level = common dso_local global i32 0, align 4
@vlc_tab_run = common dso_local global i32 0, align 4
@vlc_tab_diff = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @init_quantized_coeffs_elem0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_quantized_coeffs_elem0(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @get_bits_left(i32* %11)
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %75

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @qdm2_get_vlc(i32* %16, i32* @vlc_tab_level, i32 0, i32 2)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %18, i32* %20, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %67, %15
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 7
  br i1 %23, label %24, label %74

24:                                               ; preds = %21
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @get_bits_left(i32* %25)
  %27 = icmp slt i32 %26, 16
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %75

29:                                               ; preds = %24
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @qdm2_get_vlc(i32* %30, i32* @vlc_tab_run, i32 0, i32 1)
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %33, %34
  %36 = icmp sge i32 %35, 8
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %75

38:                                               ; preds = %29
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @get_bits_left(i32* %39)
  %41 = icmp slt i32 %40, 16
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %75

43:                                               ; preds = %38
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @qdm2_get_se_vlc(i32* @vlc_tab_diff, i32* %44, i32 2)
  store i32 %45, i32* %10, align 4
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %64, %43
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = sdiv i32 %54, %55
  %57 = add nsw i32 %51, %56
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  store i32 %57, i32* %63, align 4
  br label %64

64:                                               ; preds = %50
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %46

67:                                               ; preds = %46
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %21

74:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %42, %37, %28, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @qdm2_get_vlc(i32*, i32*, i32, i32) #1

declare dso_local i32 @qdm2_get_se_vlc(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
