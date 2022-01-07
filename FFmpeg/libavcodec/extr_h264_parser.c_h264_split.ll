; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parser.c_h264_split.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_parser.c_h264_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H264_NAL_SPS = common dso_local global i32 0, align 4
@H264_NAL_PPS = common dso_local global i32 0, align 4
@H264_NAL_SEI = common dso_local global i32 0, align 4
@H264_NAL_AUD = common dso_local global i32 0, align 4
@H264_NAL_SPS_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32)* @h264_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_split(i32* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i64*, i64** %6, align 8
  store i64* %14, i64** %11, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  store i64* %18, i64** %12, align 8
  br label %19

19:                                               ; preds = %92, %3
  %20 = load i64*, i64** %11, align 8
  %21 = load i64*, i64** %12, align 8
  %22 = icmp ult i64* %20, %21
  br i1 %22, label %23, label %93

23:                                               ; preds = %19
  %24 = load i64*, i64** %11, align 8
  %25 = load i64*, i64** %12, align 8
  %26 = call i64* @avpriv_find_start_code(i64* %24, i64* %25, i32* %8)
  store i64* %26, i64** %11, align 8
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, -256
  %29 = icmp ne i32 %28, 256
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %93

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 31
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @H264_NAL_SPS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %9, align 4
  br label %92

38:                                               ; preds = %31
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @H264_NAL_PPS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %10, align 4
  br label %91

43:                                               ; preds = %38
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @H264_NAL_SEI, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %90

50:                                               ; preds = %47, %43
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @H264_NAL_AUD, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %90

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @H264_NAL_SPS_EXT, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %90

58:                                               ; preds = %54
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 15
  br i1 %60, label %61, label %90

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %77, %64
  %66 = load i64*, i64** %11, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 -4
  %68 = load i64*, i64** %6, align 8
  %69 = icmp ugt i64* %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i64*, i64** %11, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 -5
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br label %75

75:                                               ; preds = %70, %65
  %76 = phi i1 [ false, %65 ], [ %74, %70 ]
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = load i64*, i64** %11, align 8
  %79 = getelementptr inbounds i64, i64* %78, i32 -1
  store i64* %79, i64** %11, align 8
  br label %65

80:                                               ; preds = %75
  %81 = load i64*, i64** %11, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 -4
  %83 = load i64*, i64** %6, align 8
  %84 = ptrtoint i64* %82 to i64
  %85 = ptrtoint i64* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %4, align 4
  br label %94

89:                                               ; preds = %61
  br label %90

90:                                               ; preds = %89, %58, %54, %50, %47
  br label %91

91:                                               ; preds = %90, %42
  br label %92

92:                                               ; preds = %91, %37
  br label %19

93:                                               ; preds = %30, %19
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %80
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64* @avpriv_find_start_code(i64*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
