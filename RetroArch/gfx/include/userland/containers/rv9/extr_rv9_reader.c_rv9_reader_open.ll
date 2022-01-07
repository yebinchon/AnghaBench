; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rv9/extr_rv9_reader.c_rv9_reader_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rv9/extr_rv9_reader.c_rv9_reader_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_18__** }
%struct.TYPE_15__ = type { i32, i32, i32 (%struct.TYPE_16__*)*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }

@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_RV40 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"using rv9 reader\00", align 1
@rv9_reader_read = common dso_local global i32 0, align 4
@rv9_reader_seek = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"rv9: error opening stream (%i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rv9_reader_open(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  %6 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = call i64 @rv9_read_file_header(%struct.TYPE_16__* %7, %struct.TYPE_18__* null)
  %9 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %12, i64* %2, align 8
  br label %111

13:                                               ; preds = %1
  %14 = call %struct.TYPE_17__* @malloc(i32 8)
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %4, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = icmp ne %struct.TYPE_17__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %18, i64* %5, align 8
  br label %100

19:                                               ; preds = %13
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = call i32 @memset(%struct.TYPE_17__* %20, i32 0, i32 8)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 3
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %26, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  store %struct.TYPE_18__** %30, %struct.TYPE_18__*** %32, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = call %struct.TYPE_18__* @vc_container_allocate_track(%struct.TYPE_16__* %33, i32 0)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %37, i64 0
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %41, i64 0
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = icmp ne %struct.TYPE_18__* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %19
  %46 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %46, i64* %5, align 8
  br label %100

47:                                               ; preds = %19
  %48 = load i32, i32* @VC_CONTAINER_ES_TYPE_VIDEO, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %51, i64 0
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  store i32 %48, i32* %56, align 4
  %57 = load i32, i32* @VC_CONTAINER_CODEC_RV40, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %60, i64 0
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store i32 %57, i32* %65, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %68, i64 0
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %75, i64 0
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = call i64 @rv9_read_file_header(%struct.TYPE_16__* %72, %struct.TYPE_18__* %77)
  store i64 %78, i64* %5, align 8
  %79 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %47
  br label %100

82:                                               ; preds = %47
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = call i32 (%struct.TYPE_16__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_16__* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  store i32 (%struct.TYPE_16__*)* @rv9_reader_close, i32 (%struct.TYPE_16__*)** %88, align 8
  %89 = load i32, i32* @rv9_reader_read, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  store i32 %89, i32* %93, align 4
  %94 = load i32, i32* @rv9_reader_seek, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 8
  %99 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %99, i64* %2, align 8
  br label %111

100:                                              ; preds = %81, %45, %17
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %102 = load i64, i64* %5, align 8
  %103 = call i32 (%struct.TYPE_16__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_16__* %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %102)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = icmp ne %struct.TYPE_17__* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %108 = call i32 @rv9_reader_close(%struct.TYPE_16__* %107)
  br label %109

109:                                              ; preds = %106, %100
  %110 = load i64, i64* %5, align 8
  store i64 %110, i64* %2, align 8
  br label %111

111:                                              ; preds = %109, %82, %11
  %112 = load i64, i64* %2, align 8
  ret i64 %112
}

declare dso_local i64 @rv9_read_file_header(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_17__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @vc_container_allocate_track(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @rv9_reader_close(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
