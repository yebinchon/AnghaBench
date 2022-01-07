; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvdec.c_nvdec_test_capabilities.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvdec.c_nvdec_test_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Used Nvidia driver is too old to perform a capability check.\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"The minimum required version is 378.13. Continuing blind.\0A\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"NVDEC capabilities:\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"format supported: %s, max_mb_count: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"min_width: %d, max_width: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"min_height: %d, max_height: %d\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"Hardware is lacking required capabilities\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c"Video width %d not within range from %d to %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Video height %d not within range from %d to %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"Video macroblock count %d exceeds maximum of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i8*)* @nvdec_test_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvdec_test_capabilities(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 48, i1 false)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 8
  store i32 %13, i32* %14, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 7
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 6
  store i32 %21, i32* %22, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %26, align 8
  %28 = icmp ne i32 (%struct.TYPE_11__*)* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %3
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @AV_LOG_WARNING, align 4
  %32 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %30, i32 %31, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* @AV_LOG_WARNING, align 4
  %35 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %33, i32 %34, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %168

36:                                               ; preds = %3
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %40, align 8
  %42 = call i32 %41(%struct.TYPE_11__* %9)
  %43 = call i32 @CHECK_CU(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %168

48:                                               ; preds = %36
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %51 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %49, i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %52, i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %58, i32 %60)
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %62, i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %65, i32 %67)
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %69, i32 %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %72, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %48
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* @AV_LOG_ERROR, align 4
  %82 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %80, i32 %81, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = call i32 @AVERROR(i32 %83)
  store i32 %84, i32* %4, align 4
  br label %168

85:                                               ; preds = %48
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp sgt i32 %88, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %92, %85
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* @AV_LOG_ERROR, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %100, i32 %101, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %104, i32 %106, i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = call i32 @AVERROR(i32 %110)
  store i32 %111, i32* %4, align 4
  br label %168

112:                                              ; preds = %92
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = icmp sgt i32 %115, %117
  br i1 %118, label %126, label %119

119:                                              ; preds = %112
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %119, %112
  %127 = load i8*, i8** %7, align 8
  %128 = load i32, i32* @AV_LOG_ERROR, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %127, i32 %128, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 %131, i32 %133, i32 %135)
  %137 = load i32, i32* @EINVAL, align 4
  %138 = call i32 @AVERROR(i32 %137)
  store i32 %138, i32* %4, align 4
  br label %168

139:                                              ; preds = %119
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %142, %145
  %147 = sdiv i32 %146, 256
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp sgt i32 %147, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %139
  %152 = load i8*, i8** %7, align 8
  %153 = load i32, i32* @AV_LOG_ERROR, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %156, %159
  %161 = sdiv i32 %160, 256
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %152, i32 %153, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i32 %161, i32 %163)
  %165 = load i32, i32* @EINVAL, align 4
  %166 = call i32 @AVERROR(i32 %165)
  store i32 %166, i32* %4, align 4
  br label %168

167:                                              ; preds = %139
  store i32 0, i32* %4, align 4
  br label %168

168:                                              ; preds = %167, %151, %126, %99, %79, %46, %29
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #2

declare dso_local i32 @CHECK_CU(i32) #2

declare dso_local i32 @AVERROR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
