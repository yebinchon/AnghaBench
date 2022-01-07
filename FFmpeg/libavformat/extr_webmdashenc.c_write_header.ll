; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_webmdashenc.c_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_webmdashenc.c_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i64, i64 }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"<?xml version=\221.0\22 encoding=\22UTF-8\22?>\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"<MPD\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"  xmlns:xsi=\22http://www.w3.org/2001/XMLSchema-instance\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"  xmlns=\22urn:mpeg:DASH:schema:MPD:2011\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"  xsi:schemaLocation=\22urn:mpeg:DASH:schema:MPD:2011\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"  type=\22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"  mediaPresentationDuration=\22PT%gS\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"  minBufferTime=\22PT%gS\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"  profiles=\22%s\22%s\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"urn:mpeg:dash:profile:isoff-live:2011\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"urn:webm:dash:profile:webm-on-demand:2012\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"%Y-%m-%dT%H:%M:%SZ\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"  availabilityStartTime=\22%s\22\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"  timeShiftBufferDepth=\22PT%gS\22\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"  minimumUpdatePeriod=\22PT%dS\22\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"<UTCTiming\0A\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"  schemeIdUri=\22urn:mpeg:dash:utc:http-iso:2014\22\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"  value=\22%s\22/>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_header(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm, align 4
  %8 = alloca %struct.tm*, align 8
  %9 = alloca [21 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %4, align 8
  store double 1.000000e+00, double* %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i32, i8*, ...) @avio_printf(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32, i8*, ...) @avio_printf(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @avio_printf(i32 %23, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32, i8*, ...) @avio_printf(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, i8*, ...) @avio_printf(i32 %31, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %42 = call i32 (i32, i8*, ...) @avio_printf(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = call i8* @get_duration(%struct.TYPE_6__* %51)
  %53 = call i32 (i32, i8*, ...) @avio_printf(i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %47, %1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load double, double* %5, align 8
  %59 = call i32 (i32, i8*, ...) @avio_printf(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), double %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)
  %75 = call i32 (i32, i8*, ...) @avio_printf(i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %68, i8* %74)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %142

80:                                               ; preds = %54
  %81 = call i32 @time(i32* null)
  store i32 %81, i32* %6, align 4
  %82 = call %struct.tm* @gmtime_r(i32* %6, %struct.tm* %7)
  store %struct.tm* %82, %struct.tm** %8, align 8
  %83 = getelementptr inbounds [21 x i8], [21 x i8]* %9, i64 0, i64 0
  %84 = load %struct.tm*, %struct.tm** %8, align 8
  %85 = call i32 @strftime(i8* %83, i32 21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), %struct.tm* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %88, i32* %2, align 4
  br label %143

89:                                               ; preds = %80
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = getelementptr inbounds [21 x i8], [21 x i8]* %9, i64 0, i64 0
  %96 = call i32 @av_strlcpy(i8* %95, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i32 1)
  br label %97

97:                                               ; preds = %94, %89
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds [21 x i8], [21 x i8]* %9, i64 0, i64 0
  %102 = call i32 (i32, i8*, ...) @avio_printf(i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i8* %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i32, i8*, ...) @avio_printf(i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* %108)
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 (i32, i8*, ...) @avio_printf(i32 %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i8* %115)
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @avio_printf(i32 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %141

125:                                              ; preds = %97
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, i8*, ...) @avio_printf(i32 %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i32, i8*, ...) @avio_printf(i32 %132, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0))
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (i32, i8*, ...) @avio_printf(i32 %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %125, %97
  br label %142

142:                                              ; preds = %141, %54
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %87
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @avio_printf(i32, i8*, ...) #1

declare dso_local i8* @get_duration(%struct.TYPE_6__*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @gmtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
