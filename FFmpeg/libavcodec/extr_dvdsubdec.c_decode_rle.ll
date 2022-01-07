; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvdsubdec.c_decode_rle.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvdsubdec.c_decode_rle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32*, i32*, i32, i32, i32)* @decode_rle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_rle(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %9
  store i32 -1, i32* %10, align 4
  br label %112

31:                                               ; preds = %9
  %32 = load i32, i32* %13, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %14, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %31
  store i32 -1, i32* %10, align 4
  br label %112

38:                                               ; preds = %34
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* %17, align 4
  %41 = sub nsw i32 %39, %40
  %42 = mul nsw i32 %41, 8
  store i32 %42, i32* %21, align 4
  %43 = load i32*, i32** %16, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %21, align 4
  %48 = call i32 @init_get_bits(i32* %20, i32* %46, i32 %47)
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %49 = load i32*, i32** %11, align 8
  store i32* %49, i32** %26, align 8
  br label %50

50:                                               ; preds = %110, %38
  %51 = call i32 @get_bits_count(i32* %20)
  %52 = load i32, i32* %21, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 -1, i32* %10, align 4
  br label %112

55:                                               ; preds = %50
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @decode_run_8bit(i32* %20, i32* %25)
  store i32 %59, i32* %24, align 4
  br label %62

60:                                               ; preds = %55
  %61 = call i32 @decode_run_2bit(i32* %20, i32* %25)
  store i32 %61, i32* %24, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = load i32, i32* %24, align 4
  %64 = load i32, i32* @INT_MAX, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32, i32* %24, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %22, align 4
  %70 = sub nsw i32 %68, %69
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %73, i32* %10, align 4
  br label %112

74:                                               ; preds = %66, %62
  %75 = load i32, i32* %24, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %22, align 4
  %78 = sub nsw i32 %76, %77
  %79 = call i32 @FFMIN(i32 %75, i32 %78)
  store i32 %79, i32* %24, align 4
  %80 = load i32*, i32** %26, align 8
  %81 = load i32, i32* %22, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %25, align 4
  %85 = load i32, i32* %24, align 4
  %86 = call i32 @memset(i32* %83, i32 %84, i32 %85)
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %25, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 1, i32* %90, align 4
  %91 = load i32, i32* %24, align 4
  %92 = load i32, i32* %22, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %22, align 4
  %94 = load i32, i32* %22, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %74
  %98 = load i32, i32* %23, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %23, align 4
  %100 = load i32, i32* %23, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %111

104:                                              ; preds = %97
  %105 = load i32, i32* %12, align 4
  %106 = load i32*, i32** %26, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %26, align 8
  store i32 0, i32* %22, align 4
  %109 = call i32 @align_get_bits(i32* %20)
  br label %110

110:                                              ; preds = %104, %74
  br label %50

111:                                              ; preds = %103
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %111, %72, %54, %37, %30
  %113 = load i32, i32* %10, align 4
  ret i32 %113
}

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @decode_run_8bit(i32*, i32*) #1

declare dso_local i32 @decode_run_2bit(i32*, i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @align_get_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
