; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_read_subelements_compression.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_read_subelements_compression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i32* }

@MKV_ELEMENT_ID_CONTENT_COMPRESSION_ALGO = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@MKV_CONTENT_ENCODING_COMPRESSION_ZLIB = common dso_local global i64 0, align 8
@MKV_CONTENT_ENCODING_COMPRESSION_HEADER = common dso_local global i64 0, align 8
@MKV_CONTENT_ENCODING_UNKNOWN = common dso_local global i64 0, align 8
@MKV_ELEMENT_ID_CONTENT_COMPRESSION_SETTINGS = common dso_local global i64 0, align 8
@MKV_MAX_ENCODING_DATA = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i64, i64)* @mkv_read_subelements_compression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mkv_read_subelements_compression(%struct.TYPE_18__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %8, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @MKV_ELEMENT_ID_CONTENT_COMPRESSION_ALGO, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %3
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @mkv_read_element_data_uint(%struct.TYPE_18__* %29, i64 %30, i32* %11)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %4, align 8
  br label %159

37:                                               ; preds = %28
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i64, i64* @MKV_CONTENT_ENCODING_COMPRESSION_ZLIB, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  store i64 %41, i64* %49, align 8
  br label %50

50:                                               ; preds = %40, %37
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i64, i64* @MKV_CONTENT_ENCODING_COMPRESSION_HEADER, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  store i64 %54, i64* %62, align 8
  br label %73

63:                                               ; preds = %50
  %64 = load i64, i64* @MKV_CONTENT_ENCODING_UNKNOWN, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  store i64 %64, i64* %72, align 8
  br label %73

73:                                               ; preds = %63, %53
  %74 = load i64, i64* %10, align 8
  store i64 %74, i64* %4, align 8
  br label %159

75:                                               ; preds = %3
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @MKV_ELEMENT_ID_CONTENT_COMPRESSION_SETTINGS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %157

79:                                               ; preds = %75
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @MKV_CONTENT_ENCODING_COMPRESSION_HEADER, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %150

91:                                               ; preds = %79
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @MKV_MAX_ENCODING_DATA, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_RESOURCES, align 8
  store i64 %96, i64* %4, align 8
  br label %159

97:                                               ; preds = %91
  %98 = load i64, i64* %7, align 8
  %99 = trunc i64 %98 to i32
  %100 = call i32* @malloc(i32 %99)
  store i32* %100, i32** %12, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %97
  %104 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %104, i64* %4, align 8
  br label %159

105:                                              ; preds = %97
  %106 = load i32*, i32** %12, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  store i32* %106, i32** %114, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = load i64, i64* %7, align 8
  %118 = call i64 @READ_BYTES(%struct.TYPE_18__* %115, i32* %116, i64 %117)
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  store i64 %118, i64* %126, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %7, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %105
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  store i64 0, i64* %146, align 8
  br label %147

147:                                              ; preds = %138, %105
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %149 = call i64 @STREAM_STATUS(%struct.TYPE_18__* %148)
  store i64 %149, i64* %4, align 8
  br label %159

150:                                              ; preds = %79
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %152 = load i64, i64* %7, align 8
  %153 = call i32 @SKIP_BYTES(%struct.TYPE_18__* %151, i64 %152)
  br label %154

154:                                              ; preds = %150
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %156 = call i64 @STREAM_STATUS(%struct.TYPE_18__* %155)
  store i64 %156, i64* %4, align 8
  br label %159

157:                                              ; preds = %75
  %158 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %158, i64* %4, align 8
  br label %159

159:                                              ; preds = %157, %154, %147, %103, %95, %73, %35
  %160 = load i64, i64* %4, align 8
  ret i64 %160
}

declare dso_local i64 @mkv_read_element_data_uint(%struct.TYPE_18__*, i64, i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @READ_BYTES(%struct.TYPE_18__*, i32*, i64) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_18__*) #1

declare dso_local i32 @SKIP_BYTES(%struct.TYPE_18__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
