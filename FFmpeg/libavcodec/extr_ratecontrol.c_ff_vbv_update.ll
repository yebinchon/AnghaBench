; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ratecontrol.c_ff_vbv_update.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ratecontrol.c_ff_vbv_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, double, double, i64, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%d %f %d %f %f\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"rc buffer underflow\0A\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"max bitrate possibly too small or try trellis with large lmax or increase qmax\0A\00", align 1
@AV_CODEC_ID_MPEG4 = common dso_local global i64 0, align 8
@FF_DEBUG_RC = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"stuffing %d bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_vbv_update(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %6, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = call double @get_fps(%struct.TYPE_9__* %17)
  store double %18, double* %7, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load double, double* %27, align 8
  %29 = load double, double* %7, align 8
  %30 = fdiv double %28, %29
  store double %30, double* %9, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load double, double* %34, align 8
  %36 = load double, double* %7, align 8
  %37 = fdiv double %35, %36
  store double %37, double* %10, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load double, double* %9, align 8
  %45 = load double, double* %10, align 8
  %46 = call i32 @ff_dlog(%struct.TYPE_8__* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %43, double %44, double %45)
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %152

49:                                               ; preds = %2
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %49
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = load i32, i32* @AV_LOG_ERROR, align 4
  %64 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %62, i32 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* %5, align 4
  %66 = sitofp i32 %65 to double
  %67 = load double, double* %10, align 8
  %68 = fcmp ogt double %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %59
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %72, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %82, i32 %83, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %79, %69, %59
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %49
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %89, %92
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load double, double* %9, align 8
  %97 = load double, double* %10, align 8
  %98 = call i64 @av_clip(i32 %95, double %96, double %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %151

110:                                              ; preds = %88
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sdiv i32 %115, 8
  %117 = call i32 @ceil(i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %118, 4
  br i1 %119, label %120, label %127

120:                                              ; preds = %110
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @AV_CODEC_ID_MPEG4, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 4, i32* %12, align 4
  br label %127

127:                                              ; preds = %126, %120, %110
  %128 = load i32, i32* %12, align 4
  %129 = mul nsw i32 8, %128
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @FF_DEBUG_RC, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %127
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = load i32, i32* @AV_LOG_DEBUG, align 4
  %147 = load i32, i32* %12, align 4
  %148 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %145, i32 %146, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %142, %127
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %3, align 4
  br label %153

151:                                              ; preds = %88
  br label %152

152:                                              ; preds = %151, %2
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %152, %149
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local double @get_fps(%struct.TYPE_9__*) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_8__*, i8*, i32, i32, i32, double, double) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i64 @av_clip(i32, double, double) #1

declare dso_local i32 @ceil(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
