; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rcv/extr_rcv_reader.c_rcv_reader_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rcv/extr_rcv_reader.c_rcv_reader_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_17__*, i32, %struct.TYPE_20__** }
%struct.TYPE_17__ = type { i32, i32, i32 (%struct.TYPE_18__*)*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }

@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_WMV3 = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"using rcv reader\00", align 1
@VC_CONTAINER_CAPS_CAN_SEEK = common dso_local global i32 0, align 4
@rcv_reader_read = common dso_local global i32 0, align 4
@rcv_reader_seek = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rcv_reader_open(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [8 x i32], align 16
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  %7 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %7, i64* %5, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %10 = call i32 @PEEK_BYTES(%struct.TYPE_18__* %8, i32* %9, i32 32)
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 32
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 197
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = call i32 @LI32(i32* %19)
  %21 = icmp ne i32 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %13, %1
  %23 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %23, i64* %2, align 8
  br label %137

24:                                               ; preds = %17
  %25 = call %struct.TYPE_19__* @malloc(i32 16)
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %4, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = icmp ne %struct.TYPE_19__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %29, i64* %5, align 8
  br label %129

30:                                               ; preds = %24
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = call i32 @memset(%struct.TYPE_19__* %31, i32 0, i32 16)
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 3
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %37, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 3
  store %struct.TYPE_20__** %41, %struct.TYPE_20__*** %43, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = call %struct.TYPE_20__* @vc_container_allocate_track(%struct.TYPE_18__* %44, i32 0)
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %48, i64 0
  store %struct.TYPE_20__* %45, %struct.TYPE_20__** %49, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %52, i64 0
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %53, align 8
  %55 = icmp ne %struct.TYPE_20__* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %30
  %57 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %57, i64* %5, align 8
  br label %129

58:                                               ; preds = %30
  %59 = load i32, i32* @VC_CONTAINER_ES_TYPE_VIDEO, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %62, i64 0
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  store i32 %59, i32* %67, align 4
  %68 = load i32, i32* @VC_CONTAINER_CODEC_WMV3, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %71, i64 0
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  store i32 %68, i32* %76, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %79, i64 0
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %84 = call i64 @rcv_read_header(%struct.TYPE_18__* %83)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %58
  br label %129

88:                                               ; preds = %58
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %90 = call i32 @LOG_DEBUG(%struct.TYPE_18__* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = call i64 @vc_container_index_create(i32* %92, i32 512)
  %94 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %88
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %101 = call i32 @STREAM_POSITION(%struct.TYPE_18__* %100)
  %102 = call i32 @vc_container_index_add(i32 %99, i64 0, i32 %101)
  br label %103

103:                                              ; preds = %96, %88
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %105 = call i64 @STREAM_SEEKABLE(%struct.TYPE_18__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i32, i32* @VC_CONTAINER_CAPS_CAN_SEEK, align 4
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %103
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 2
  store i32 (%struct.TYPE_18__*)* @rcv_reader_close, i32 (%struct.TYPE_18__*)** %117, align 8
  %118 = load i32, i32* @rcv_reader_read, align 4
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  store i32 %118, i32* %122, align 4
  %123 = load i32, i32* @rcv_reader_seek, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  store i32 %123, i32* %127, align 8
  %128 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %128, i64* %2, align 8
  br label %137

129:                                              ; preds = %87, %56, %28
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %131 = icmp ne %struct.TYPE_19__* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %134 = call i32 @rcv_reader_close(%struct.TYPE_18__* %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i64, i64* %5, align 8
  store i64 %136, i64* %2, align 8
  br label %137

137:                                              ; preds = %135, %113, %22
  %138 = load i64, i64* %2, align 8
  ret i64 %138
}

declare dso_local i32 @PEEK_BYTES(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @LI32(i32*) #1

declare dso_local %struct.TYPE_19__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local %struct.TYPE_20__* @vc_container_allocate_track(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @rcv_read_header(%struct.TYPE_18__*) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_18__*, i8*) #1

declare dso_local i64 @vc_container_index_create(i32*, i32) #1

declare dso_local i32 @vc_container_index_add(i32, i64, i32) #1

declare dso_local i32 @STREAM_POSITION(%struct.TYPE_18__*) #1

declare dso_local i64 @STREAM_SEEKABLE(%struct.TYPE_18__*) #1

declare dso_local i32 @rcv_reader_close(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
