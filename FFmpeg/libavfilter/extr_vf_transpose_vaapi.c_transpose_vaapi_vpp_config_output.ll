; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_transpose_vaapi.c_transpose_vaapi_vpp_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_transpose_vaapi.c_transpose_vaapi_vpp_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__**, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i64, i64 }

@TRANSPOSE_PT_TYPE_LANDSCAPE = common dso_local global i64 0, align 8
@TRANSPOSE_PT_TYPE_PORTRAIT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"w:%d h:%d -> w:%d h:%d (passthrough mode)\0A\00", align 1
@TRANSPOSE_PT_TYPE_NONE = common dso_local global i64 0, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"swap width and height for clock/cclock rotation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @transpose_vaapi_vpp_config_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transpose_vaapi_vpp_config_output(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %6, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %19, i64 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %7, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TRANSPOSE_PT_TYPE_LANDSCAPE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %49, label %35

35:                                               ; preds = %29, %1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sle i64 %38, %41
  br i1 %42, label %43, label %79

43:                                               ; preds = %35
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TRANSPOSE_PT_TYPE_PORTRAIT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %43, %29
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @av_buffer_ref(i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %49
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = call i32 @AVERROR(i32 %61)
  store i32 %62, i32* %2, align 4
  br label %112

63:                                               ; preds = %49
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %64, i32 %65, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %71, i64 %74, i64 %77)
  store i32 0, i32* %2, align 4
  br label %112

79:                                               ; preds = %43, %35
  %80 = load i64, i64* @TRANSPOSE_PT_TYPE_NONE, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  switch i32 %85, label %108 [
    i32 130, label %86
    i32 131, label %86
    i32 129, label %86
    i32 128, label %86
  ]

86:                                               ; preds = %79, %79, %79, %79
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %89, i64 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %98, i64 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %106 = load i32, i32* @AV_LOG_DEBUG, align 4
  %107 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %105, i32 %106, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %109

108:                                              ; preds = %79
  br label %109

109:                                              ; preds = %108, %86
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = call i32 @ff_vaapi_vpp_config_output(%struct.TYPE_9__* %110)
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %109, %63, %60
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @av_buffer_ref(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @ff_vaapi_vpp_config_output(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
