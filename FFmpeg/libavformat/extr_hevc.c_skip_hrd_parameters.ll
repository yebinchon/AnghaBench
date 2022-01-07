; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hevc.c_skip_hrd_parameters.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hevc.c_skip_hrd_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32)* @skip_hrd_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_hrd_parameters(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @get_bits1(i32* %19)
  store i64 %20, i64* %10, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @get_bits1(i32* %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %25, %18
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @get_bits1(i32* %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @skip_bits(i32* %34, i32 19)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @skip_bits(i32* %37, i32 8)
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @skip_bits(i32* %42, i32 4)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @skip_bits(i32* %45, i32 15)
  br label %47

47:                                               ; preds = %44, %25
  br label %48

48:                                               ; preds = %47, %3
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %98, %48
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ule i32 %50, %51
  br i1 %52, label %53, label %101

53:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @get_bits1(i32* %54)
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %15, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32*, i32** %5, align 8
  %60 = call i64 @get_bits1(i32* %59)
  store i64 %60, i64* %14, align 8
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i64, i64* %14, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @get_ue_golomb_long(i32* %65)
  br label %70

67:                                               ; preds = %61
  %68 = load i32*, i32** %5, align 8
  %69 = call i64 @get_bits1(i32* %68)
  store i64 %69, i64* %13, align 8
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i64, i64* %13, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %70
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @get_ue_golomb_long(i32* %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ugt i32 %76, 31
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %79, i32* %4, align 4
  br label %102

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %70
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @skip_sub_layer_hrd_parameters(i32* %85, i32 %86, i64 %87)
  br label %89

89:                                               ; preds = %84, %81
  %90 = load i64, i64* %11, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @skip_sub_layer_hrd_parameters(i32* %93, i32 %94, i64 %95)
  br label %97

97:                                               ; preds = %92, %89
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %49

101:                                              ; preds = %49
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %78
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_ue_golomb_long(i32*) #1

declare dso_local i32 @skip_sub_layer_hrd_parameters(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
