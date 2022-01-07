; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec.c_decode_exponents.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec.c_decode_exponents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EXP_D45 = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"expacc %d is out-of-range\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ungroup_3_in_7_bits_tab = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"exponent %d is out-of-range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32, i32, i32*)* @decode_exponents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_exponents(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [256 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @EXP_D45, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %78, %6
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %81

31:                                               ; preds = %27
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @get_bits(i32* %32, i32 7)
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %19, align 4
  %35 = icmp sge i32 %34, 125
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AV_LOG_ERROR, align 4
  %41 = load i32, i32* %19, align 4
  %42 = call i32 @av_log(i32 %39, i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %7, align 4
  br label %140

44:                                               ; preds = %31
  %45 = load i32**, i32*** @ungroup_3_in_7_bits_tab, align 8
  %46 = load i32, i32* %19, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %14, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %54
  store i32 %51, i32* %55, align 4
  %56 = load i32**, i32*** @ungroup_3_in_7_bits_tab, align 8
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %65
  store i32 %62, i32* %66, align 4
  %67 = load i32**, i32*** @ungroup_3_in_7_bits_tab, align 8
  %68 = load i32, i32* %19, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %76
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %44
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %16, align 4
  br label %27

81:                                               ; preds = %27
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %20, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %136, %81
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %11, align 4
  %86 = mul nsw i32 %85, 3
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %139

88:                                               ; preds = %83
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 2
  %94 = load i32, i32* %20, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %20, align 4
  %96 = load i32, i32* %20, align 4
  %97 = icmp ugt i32 %96, 24
  br i1 %97, label %98, label %106

98:                                               ; preds = %88
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @AV_LOG_ERROR, align 4
  %103 = load i32, i32* %20, align 4
  %104 = call i32 @av_log(i32 %101, i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %105, i32* %7, align 4
  br label %140

106:                                              ; preds = %88
  %107 = load i32, i32* %17, align 4
  switch i32 %107, label %135 [
    i32 4, label %108
    i32 2, label %121
    i32 1, label %128
  ]

108:                                              ; preds = %106
  %109 = load i32, i32* %20, align 4
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  store i32 %109, i32* %114, align 4
  %115 = load i32, i32* %20, align 4
  %116 = load i32*, i32** %13, align 8
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %115, i32* %120, align 4
  br label %121

121:                                              ; preds = %106, %108
  %122 = load i32, i32* %20, align 4
  %123 = load i32*, i32** %13, align 8
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %15, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 %122, i32* %127, align 4
  br label %128

128:                                              ; preds = %106, %121
  %129 = load i32, i32* %20, align 4
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %15, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  store i32 %129, i32* %134, align 4
  br label %135

135:                                              ; preds = %128, %106
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %14, align 4
  br label %83

139:                                              ; preds = %83
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %139, %98, %36
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
