; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_ps.c_pps_range_extensions.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_ps.c_pps_range_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i8**, i8**, i8*, i8*, i8*, i8*, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"chroma_qp_offset_list_len_minus1 shall be in the range [0, 5].\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cb_qp_offset_list not tested yet.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_5__*)* @pps_range_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pps_range_extensions(i32* %0, i32* %1, %struct.TYPE_6__* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 9
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = call i8* @get_ue_golomb_long(i32* %16)
  %18 = getelementptr i8, i8* %17, i64 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 8
  store i8* %18, i8** %20, align 8
  br label %21

21:                                               ; preds = %15, %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i8* @get_bits1(i32* %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i8* @get_bits1(i32* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 6
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %107

34:                                               ; preds = %21
  %35 = load i32*, i32** %6, align 8
  %36 = call i8* @get_ue_golomb_long(i32* %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i8* @get_ue_golomb_long(i32* %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 5
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = call i32 @av_log(i32* %49, i32 %50, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %52, i32* %5, align 4
  br label %140

53:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %103, %53
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sle i32 %55, %58
  br i1 %59, label %60, label %106

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  %62 = call i8* @get_se_golomb_long(i32* %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* %62, i8** %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %60
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* @AV_LOG_WARNING, align 4
  %80 = call i32 @av_log(i32* %78, i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %77, %60
  %82 = load i32*, i32** %6, align 8
  %83 = call i8* @get_se_golomb_long(i32* %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i8**, i8*** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  store i8* %83, i8** %89, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load i8**, i8*** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %81
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* @AV_LOG_WARNING, align 4
  %101 = call i32 @av_log(i32* %99, i32 %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %98, %81
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %54

106:                                              ; preds = %54
  br label %107

107:                                              ; preds = %106, %21
  %108 = load i32*, i32** %6, align 8
  %109 = call i8* @get_ue_golomb_long(i32* %108)
  %110 = ptrtoint i8* %109 to i64
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = call i8* @get_ue_golomb_long(i32* %113)
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %123, 10
  %125 = call i64 @FFMAX(i64 %124, i32 0)
  %126 = icmp sgt i64 %120, %125
  br i1 %126, label %137, label %127

127:                                              ; preds = %107
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %133, 10
  %135 = call i64 @FFMAX(i64 %134, i32 0)
  %136 = icmp sgt i64 %130, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %127, %107
  %138 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %138, i32* %5, align 4
  br label %140

139:                                              ; preds = %127
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %139, %137, %48
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i8* @get_ue_golomb_long(i32*) #1

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i8* @get_se_golomb_long(i32*) #1

declare dso_local i64 @FFMAX(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
