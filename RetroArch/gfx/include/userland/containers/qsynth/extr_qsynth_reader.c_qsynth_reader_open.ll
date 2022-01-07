; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/qsynth/extr_qsynth_reader.c_qsynth_reader_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/qsynth/extr_qsynth_reader.c_qsynth_reader_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, i32, %struct.TYPE_18__** }
%struct.TYPE_15__ = type { i32, i32, i32 (%struct.TYPE_16__*)*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }

@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@HEADER_LENGTH = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_AUDIO = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_MIDI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"using qsynth reader\00", align 1
@VC_CONTAINER_CAPS_CAN_SEEK = common dso_local global i32 0, align 4
@qsynth_reader_read = common dso_local global i32 0, align 4
@qsynth_reader_seek = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"qsynth: error opening stream (%i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @qsynth_reader_open(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  %9 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* @HEADER_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = load i32, i32* @HEADER_LENGTH, align 4
  %16 = call i32 @PEEK_BYTES(%struct.TYPE_16__* %14, i32* %13, i32 %15)
  %17 = load i32, i32* @HEADER_LENGTH, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = call i64 @qsynth_read_header(i32* %13, i32 0, i32 0, i32 0, i32 0)
  %21 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %1
  %24 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %24, i64* %2, align 8
  store i32 1, i32* %8, align 4
  br label %121

25:                                               ; preds = %19
  %26 = call %struct.TYPE_17__* @malloc(i32 8)
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %4, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = icmp ne %struct.TYPE_17__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %30, i64* %5, align 8
  br label %110

31:                                               ; preds = %25
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = call i32 @memset(%struct.TYPE_17__* %32, i32 0, i32 8)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 3
  store %struct.TYPE_18__** %42, %struct.TYPE_18__*** %44, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = call %struct.TYPE_18__* @vc_container_allocate_track(%struct.TYPE_16__* %45, i32 0)
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %49, i64 0
  store %struct.TYPE_18__* %46, %struct.TYPE_18__** %50, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %53, i64 0
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = icmp ne %struct.TYPE_18__* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %31
  %58 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %58, i64* %5, align 8
  br label %110

59:                                               ; preds = %31
  %60 = load i32, i32* @VC_CONTAINER_ES_TYPE_AUDIO, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %63, i64 0
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  store i32 %60, i32* %68, align 4
  %69 = load i32, i32* @VC_CONTAINER_CODEC_MIDI, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %72, i64 0
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  store i32 %69, i32* %77, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %80, i64 0
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %85 = call i64 @qsynth_get_duration(%struct.TYPE_16__* %84)
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %59
  br label %110

89:                                               ; preds = %59
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %91 = call i32 (%struct.TYPE_16__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_16__* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @VC_CONTAINER_CAPS_CAN_SEEK, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 2
  store i32 (%struct.TYPE_16__*)* @qsynth_reader_close, i32 (%struct.TYPE_16__*)** %98, align 8
  %99 = load i32, i32* @qsynth_reader_read, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  store i32 %99, i32* %103, align 4
  %104 = load i32, i32* @qsynth_reader_seek, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 8
  %109 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %109, i64* %2, align 8
  store i32 1, i32* %8, align 4
  br label %121

110:                                              ; preds = %88, %57, %29
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %112 = load i64, i64* %5, align 8
  %113 = call i32 (%struct.TYPE_16__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_16__* %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %112)
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %115 = icmp ne %struct.TYPE_17__* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %118 = call i32 @qsynth_reader_close(%struct.TYPE_16__* %117)
  br label %119

119:                                              ; preds = %116, %110
  %120 = load i64, i64* %5, align 8
  store i64 %120, i64* %2, align 8
  store i32 1, i32* %8, align 4
  br label %121

121:                                              ; preds = %119, %89, %23
  %122 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i64, i64* %2, align 8
  ret i64 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PEEK_BYTES(%struct.TYPE_16__*, i32*, i32) #2

declare dso_local i64 @qsynth_read_header(i32*, i32, i32, i32, i32) #2

declare dso_local %struct.TYPE_17__* @malloc(i32) #2

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #2

declare dso_local %struct.TYPE_18__* @vc_container_allocate_track(%struct.TYPE_16__*, i32) #2

declare dso_local i64 @qsynth_get_duration(%struct.TYPE_16__*) #2

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_16__*, i8*, ...) #2

declare dso_local i32 @qsynth_reader_close(%struct.TYPE_16__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
