; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_calc_one_scale.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_calc_one_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32, i8* }

@scalefactor_inv = common dso_local global %struct.TYPE_11__* null, align 8
@stepsize_inv = common dso_local global %struct.TYPE_10__* null, align 8
@ff_dca_quant_levels = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, %struct.TYPE_8__*)* @calc_one_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_one_scale(%struct.TYPE_9__* %0, i32 %1, i32 %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @av_assert0(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, -2047
  %19 = zext i1 %18 to i32
  %20 = call i32 @av_assert0(i32 %19)
  store i32 127, i32* %10, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 0, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  store i32 64, i32* %11, align 4
  br label %29

29:                                               ; preds = %104, %4
  %30 = load i32, i32* %11, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %107

32:                                               ; preds = %29
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** @scalefactor_inv, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @stepsize_inv, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %40, %46
  %48 = icmp sle i32 %47, 17
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  br label %104

50:                                               ; preds = %32
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @scalefactor_inv, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @stepsize_inv, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @mul32(i32 %58, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i8* %65, i8** %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** @scalefactor_inv, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** @stepsize_inv, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %74, %80
  %82 = sub nsw i32 %81, 17
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 %82, i32* %83, align 8
  %84 = load i32*, i32** @ff_dca_quant_levels, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sdiv i32 %89, 2
  %91 = load i32, i32* %9, align 4
  %92 = bitcast %struct.TYPE_8__* %12 to { i32, i8* }*
  %93 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %92, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @quantize_value(i32 %91, i32 %94, i8* %96)
  %98 = icmp slt i32 %90, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %50
  br label %104

100:                                              ; preds = %50
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %100, %99, %49
  %105 = load i32, i32* %11, align 4
  %106 = ashr i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %29

107:                                              ; preds = %29
  %108 = load i32, i32* %10, align 4
  %109 = icmp sge i32 %108, 125
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 124, i32* %10, align 4
  br label %111

111:                                              ; preds = %110, %107
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** @scalefactor_inv, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** @stepsize_inv, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @mul32(i32 %117, i32 %123)
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** @scalefactor_inv, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** @stepsize_inv, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %132, %138
  %140 = sub nsw i32 %139, 17
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load i32*, i32** @ff_dca_quant_levels, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sdiv i32 %148, 2
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %152 = bitcast %struct.TYPE_8__* %151 to { i32, i8* }*
  %153 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %152, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @quantize_value(i32 %150, i32 %154, i8* %156)
  %158 = icmp sge i32 %149, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @av_assert0(i32 %159)
  %161 = load i32, i32* %10, align 4
  ret i32 %161
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i8* @mul32(i32, i32) #1

declare dso_local i32 @quantize_value(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
