; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_frame_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Deficit samples are not supported\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Unsupported number of PCM sample blocks (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Invalid core frame size (%d bytes)\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Unsupported audio channel arrangement (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Invalid core audio sampling frequency\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Reserved bit set\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Invalid low frequency effects flag\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Invalid source PCM resolution\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Unknown core frame header error\0A\00", align 1
@avpriv_dca_sample_rates = common dso_local global i32* null, align 8
@ff_dca_bit_rates = common dso_local global i32* null, align 8
@ff_dca_bits_per_sample = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @parse_frame_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_frame_header(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 96, i1 false)
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 20
  %9 = call i32 @ff_dca_parse_core_frame_header(%struct.TYPE_5__* %4, i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %103

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %96 [
    i32 134, label %14
    i32 131, label %29
    i32 133, label %50
    i32 135, label %59
    i32 128, label %68
    i32 129, label %75
    i32 132, label %82
    i32 130, label %89
  ]

14:                                               ; preds = %12
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 19
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AV_LOG_ERROR, align 4
  %19 = call i32 (i32, i32, i8*, ...) @av_log(i32 %17, i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 18
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  br label %27

25:                                               ; preds = %14
  %26 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %2, align 4
  br label %191

29:                                               ; preds = %12
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 19
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i32, i8*, ...) @av_log(i32 %32, i32 %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 6
  br i1 %39, label %44, label %40

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 18
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %29
  %45 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %2, align 4
  br label %191

50:                                               ; preds = %12
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 19
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AV_LOG_ERROR, align 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 16
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, i32, i8*, ...) @av_log(i32 %53, i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %58, i32* %2, align 4
  br label %191

59:                                               ; preds = %12
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 19
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AV_LOG_ERROR, align 4
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 15
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i32, i8*, ...) @av_log(i32 %62, i32 %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %67, i32* %2, align 4
  br label %191

68:                                               ; preds = %12
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 19
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = call i32 (i32, i32, i8*, ...) @av_log(i32 %71, i32 %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %74, i32* %2, align 4
  br label %191

75:                                               ; preds = %12
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 19
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @AV_LOG_ERROR, align 4
  %80 = call i32 (i32, i32, i8*, ...) @av_log(i32 %78, i32 %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %81 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %81, i32* %2, align 4
  br label %191

82:                                               ; preds = %12
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 19
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @AV_LOG_ERROR, align 4
  %87 = call i32 (i32, i32, i8*, ...) @av_log(i32 %85, i32 %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %88 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %88, i32* %2, align 4
  br label %191

89:                                               ; preds = %12
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 19
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @AV_LOG_ERROR, align 4
  %94 = call i32 (i32, i32, i8*, ...) @av_log(i32 %92, i32 %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %95 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %95, i32* %2, align 4
  br label %191

96:                                               ; preds = %12
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 19
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @AV_LOG_ERROR, align 4
  %101 = call i32 (i32, i32, i8*, ...) @av_log(i32 %99, i32 %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %102 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %102, i32* %2, align 4
  br label %191

103:                                              ; preds = %1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 17
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 18
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 16
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 17
  store i32 %113, i32* %115, align 4
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 15
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 16
  store i32 %117, i32* %119, align 4
  %120 = load i32*, i32** @avpriv_dca_sample_rates, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 15
  store i32 %124, i32* %126, align 4
  %127 = load i32*, i32** @ff_dca_bit_rates, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 14
  store i32 %131, i32* %133, align 4
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 14
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 13
  store i32 %135, i32* %137, align 4
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 13
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 12
  store i32 %139, i32* %141, align 4
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 12
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 11
  store i32 %143, i32* %145, align 4
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 11
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 10
  store i32 %147, i32* %149, align 4
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 10
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 9
  store i32 %151, i32* %153, align 4
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 9
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 8
  store i32 %155, i32* %157, align 4
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 8
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 7
  store i32 %159, i32* %161, align 4
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 7
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 4
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 4
  %170 = load i32*, i32** @ff_dca_bits_per_sample, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 4
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = and i64 %178, 1
  %180 = trunc i64 %179 to i32
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 4
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 4
  store i32 0, i32* %2, align 4
  br label %191

191:                                              ; preds = %103, %96, %89, %82, %75, %68, %59, %50, %48, %27
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ff_dca_parse_core_frame_header(%struct.TYPE_5__*, i32*) #2

declare dso_local i32 @av_log(i32, i32, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
