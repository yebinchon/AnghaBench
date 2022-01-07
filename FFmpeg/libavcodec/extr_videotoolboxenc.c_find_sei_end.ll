; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_find_sei_end.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_find_sei_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H264_NAL_SEI = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Unexpected end of SEI NAL Unit parsing type.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Unexpected end of SEI NAL Unit parsing size.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i32**)* @find_sei_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_sei_end(i32* %0, i32* %1, i64 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32** %3, i32*** %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32**, i32*** %9, align 8
  store i32* null, i32** %14, align 8
  %15 = load i32*, i32** %7, align 8
  store i32* %15, i32** %13, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %125

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 31
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @H264_NAL_SEI, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %125

27:                                               ; preds = %19
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %8, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 128
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %38, %27
  br label %42

42:                                               ; preds = %107, %41
  %43 = load i64, i64* %8, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 0
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ false, %42 ], [ %48, %45 ]
  br i1 %50, label %51, label %114

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %12, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %8, align 8
  br label %61

61:                                               ; preds = %52
  %62 = load i64, i64* %8, align 8
  %63 = icmp ugt i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 255
  br label %68

68:                                               ; preds = %64, %61
  %69 = phi i1 [ false, %61 ], [ %67, %64 ]
  br i1 %69, label %52, label %70

70:                                               ; preds = %68
  %71 = load i64, i64* %8, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* @AV_LOG_ERROR, align 4
  %76 = call i32 @av_log(i32* %74, i32 %75, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %77, i32* %5, align 4
  br label %125

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %96, %78
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %11, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %87, -1
  store i64 %88, i64* %8, align 8
  br label %89

89:                                               ; preds = %79
  %90 = load i64, i64* %8, align 8
  %91 = icmp ugt i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 255
  br label %96

96:                                               ; preds = %92, %89
  %97 = phi i1 [ false, %89 ], [ %95, %92 ]
  br i1 %97, label %79, label %98

98:                                               ; preds = %96
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %11, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* @AV_LOG_ERROR, align 4
  %105 = call i32 @av_log(i32* %103, i32 %104, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %106, i32* %5, align 4
  br label %125

107:                                              ; preds = %98
  %108 = load i64, i64* %11, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 %108
  store i32* %110, i32** %7, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %8, align 8
  %113 = sub i64 %112, %111
  store i64 %113, i64* %8, align 8
  br label %42

114:                                              ; preds = %49
  %115 = load i32*, i32** %7, align 8
  %116 = load i32**, i32*** %9, align 8
  store i32* %115, i32** %116, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = ptrtoint i32* %117 to i64
  %120 = ptrtoint i32* %118 to i64
  %121 = sub i64 %119, %120
  %122 = sdiv exact i64 %121, 4
  %123 = add nsw i64 %122, 1
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %114, %102, %73, %26, %18
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
