; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_copy_track_data_from_reader.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_copy_track_data_from_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i32, %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { i32, i64, i32, i32, i64, i32, i32*, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }

@.str = private unnamed_addr constant [54 x i8] c"RTSP: Expected track reader to have one track, has %d\00", align 1
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"RTSP: Track reader has meta data - not supported\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @rtsp_copy_track_data_from_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtsp_copy_track_data_from_reader(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %6, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @LOG_ERROR(%struct.TYPE_17__* %23, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %28, i64* %3, align 8
  br label %136

29:                                               ; preds = %2
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %32, i64 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = call i32 @LOG_DEBUG(%struct.TYPE_17__* %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %29
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %44, i64 0
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  store %struct.TYPE_18__* %48, %struct.TYPE_18__** %7, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  store %struct.TYPE_18__* %51, %struct.TYPE_18__** %8, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 6
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  store i32 %70, i32* %73, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @memcpy(i64 %81, i64 %84, i32 8)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %41
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %10, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i64 @vc_container_track_allocate_extradata(%struct.TYPE_17__* %104, %struct.TYPE_16__* %105, i32 %106)
  store i64 %107, i64* %9, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i64, i64* %9, align 8
  store i64 %112, i64* %3, align 8
  br label %136

113:                                              ; preds = %100
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @memcpy(i64 %116, i64 %119, i32 %120)
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %113, %41
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %128, i64 0
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %135, i64* %3, align 8
  br label %136

136:                                              ; preds = %125, %111, %22
  %137 = load i64, i64* %3, align 8
  ret i64 %137
}

declare dso_local i32 @LOG_ERROR(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i64 @vc_container_track_allocate_extradata(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
