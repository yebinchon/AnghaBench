; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_midequalizer.c_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_midequalizer.c_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__**, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8*, i8*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"inputs must be of same pixel format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EXT_STOP = common dso_local global i8* null, align 8
@EXT_INFINITY = common dso_local global i8* null, align 8
@process_frame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @config_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_output(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 6
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %4, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %5, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %18, i64 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %6, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %23, i64 1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %7, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = call i32 @av_log(%struct.TYPE_13__* %34, i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %124

39:                                               ; preds = %1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = call i32 @ff_framesync_init(%struct.TYPE_14__* %61, %struct.TYPE_13__* %62, i32 2)
  store i32 %63, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %39
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %2, align 4
  br label %124

67:                                               ; preds = %39
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %8, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i64 1
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load i8*, i8** @EXT_STOP, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  store i8* %87, i8** %90, align 8
  %91 = load i8*, i8** @EXT_INFINITY, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  store i8* %91, i8** %94, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load i8*, i8** @EXT_STOP, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i64 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  store i8* %98, i8** %101, align 8
  %102 = load i8*, i8** @EXT_INFINITY, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  store i8* %102, i8** %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  store %struct.TYPE_10__* %106, %struct.TYPE_10__** %109, align 8
  %110 = load i32, i32* @process_frame, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = call i32 @ff_framesync_configure(%struct.TYPE_14__* %115)
  store i32 %116, i32* %9, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %67, %65, %33
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_framesync_init(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ff_framesync_configure(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
