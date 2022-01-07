; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_hdcd.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_hdcd.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64, i64, i64, i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }

@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Auto-convert: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@AV_SAMPLE_FMT_S16 = common dso_local global i64 0, align 8
@AV_SAMPLE_FMT_S16P = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [75 x i8] c"bits_per_sample %d does not fit into sample format %s, falling back to 16\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Looking for %d-bit HDCD in sample format %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"20 and 24-bit HDCD decoding is experimental\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"HDCD decoding for sample rates other than 44100 is experimental\0A\00", align 1
@HDCD_MAX_CHANNELS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"CDT period: %dms (%u samples @44100Hz)\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"process_stereo disabled (channels = %d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Process mode: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"process stereo channels together\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"process each channel separately\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Force PE: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Analyze mode: [%d] %s\0A\00", align 1
@ana_mode_str = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %4, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %22 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %12, i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AV_SAMPLE_FMT_S16, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AV_SAMPLE_FMT_S16P, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28, %1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 16
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = load i32, i32* @AV_LOG_WARNING, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @av_get_sample_fmt_name(i64 %47)
  %49 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %40, i32 %41, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 %44, i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 16, i32* %51, align 8
  br label %63

52:                                               ; preds = %34, %28
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @av_get_sample_fmt_name(i64 %60)
  %62 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %53, i32 %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %57, i32 %61)
  br label %63

63:                                               ; preds = %52, %39
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 16
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = load i32, i32* @AV_LOG_WARNING, align 4
  %71 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %69, i32 %70, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %63
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 44100
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = load i32, i32* @AV_LOG_WARNING, align 4
  %80 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %78, i32 %79, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 6
  %84 = call i32 @hdcd_detect_reset(i32* %83)
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %103, %81
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @HDCD_MAX_CHANNELS, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %85
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i64 %94
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @hdcd_reset(%struct.TYPE_12__* %95, i32 %98, i64 %101)
  br label %103

103:                                              ; preds = %89
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %85

106:                                              ; preds = %85
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %107, i32 %108, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i64 %111, i32 %117)
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 2
  br i1 %122, label %123, label %137

123:                                              ; preds = %106
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %130 = load i32, i32* @AV_LOG_WARNING, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %129, i32 %130, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %133)
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 4
  store i64 0, i64* %136, align 8
  br label %137

137:                                              ; preds = %128, %123, %106
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %139 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0)
  %146 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %138, i32 %139, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %145)
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %148 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)
  %155 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %147, i32 %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %154)
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %157 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i32*, i32** @ana_mode_str, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %156, i32 %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i64 %160, i32 %166)
  ret i32 0
}

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @av_get_sample_fmt_name(i64) #1

declare dso_local i32 @hdcd_detect_reset(i32*) #1

declare dso_local i32 @hdcd_reset(%struct.TYPE_12__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
