; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_parser.c_hevc_split.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_parser.c_hevc_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@START_CODE = common dso_local global i32 0, align 4
@HEVC_NAL_VPS = common dso_local global i32 0, align 4
@HEVC_NAL_SPS = common dso_local global i32 0, align 4
@HEVC_NAL_PPS = common dso_local global i32 0, align 4
@HEVC_NAL_SEI_PREFIX = common dso_local global i32 0, align 4
@HEVC_NAL_AUD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32)* @hevc_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hevc_split(i32* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i64*, i64** %6, align 8
  store i64* %15, i64** %8, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64* %19, i64** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %97, %3
  %21 = load i64*, i64** %8, align 8
  %22 = load i64*, i64** %9, align 8
  %23 = icmp ult i64* %21, %22
  br i1 %23, label %24, label %98

24:                                               ; preds = %20
  %25 = load i64*, i64** %8, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = call i64* @avpriv_find_start_code(i64* %25, i64* %26, i32* %10)
  store i64* %27, i64** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = ashr i32 %28, 8
  %30 = load i32, i32* @START_CODE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %98

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  %35 = ashr i32 %34, 1
  %36 = and i32 %35, 63
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @HEVC_NAL_VPS, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 1, i32* %11, align 4
  br label %97

41:                                               ; preds = %33
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @HEVC_NAL_SPS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  br label %96

46:                                               ; preds = %41
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @HEVC_NAL_PPS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %13, align 4
  br label %95

51:                                               ; preds = %46
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @HEVC_NAL_SEI_PREFIX, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %55, %51
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @HEVC_NAL_AUD, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %81, %68
  %70 = load i64*, i64** %8, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 -4
  %72 = load i64*, i64** %6, align 8
  %73 = icmp ugt i64* %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i64*, i64** %8, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 -5
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i1 [ false, %69 ], [ %78, %74 ]
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load i64*, i64** %8, align 8
  %83 = getelementptr inbounds i64, i64* %82, i32 -1
  store i64* %83, i64** %8, align 8
  br label %69

84:                                               ; preds = %79
  %85 = load i64*, i64** %8, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 -4
  %87 = load i64*, i64** %6, align 8
  %88 = ptrtoint i64* %86 to i64
  %89 = ptrtoint i64* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %99

93:                                               ; preds = %65, %62
  br label %94

94:                                               ; preds = %93, %58, %55
  br label %95

95:                                               ; preds = %94, %50
  br label %96

96:                                               ; preds = %95, %45
  br label %97

97:                                               ; preds = %96, %40
  br label %20

98:                                               ; preds = %32, %20
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %84
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64* @avpriv_find_start_code(i64*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
