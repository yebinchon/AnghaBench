; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_read_subelements_encoding.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_read_subelements_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@MKV_MAX_ENCODINGS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@MKV_CONTENT_ENCODING_COMPRESSION_ZLIB = common dso_local global i32 0, align 4
@MKV_CONTENT_ENCODING_ENCRYPTION = common dso_local global i32 0, align 4
@MKV_CONTENT_ENCODING_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, i32, i32)* @mkv_read_subelements_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mkv_read_subelements_encoding(%struct.TYPE_15__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %8, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %9, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @mkv_read_element_data_uint(%struct.TYPE_15__* %24, i32 %25, i32* %11)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i64, i64* %10, align 8
  store i64 %31, i64* %4, align 8
  br label %82

32:                                               ; preds = %3
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MKV_MAX_ENCODINGS, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_RESOURCES, align 8
  store i64 %39, i64* %4, align 8
  br label %82

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  switch i32 %41, label %79 [
    i32 128, label %42
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* @MKV_CONTENT_ENCODING_COMPRESSION_ZLIB, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i32 %46, i32* %54, align 4
  br label %55

55:                                               ; preds = %45, %42
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32, i32* @MKV_CONTENT_ENCODING_ENCRYPTION, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store i32 %59, i32* %67, align 4
  br label %78

68:                                               ; preds = %55
  %69 = load i32, i32* @MKV_CONTENT_ENCODING_UNKNOWN, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  store i32 %69, i32* %77, align 4
  br label %78

78:                                               ; preds = %68, %58
  br label %80

79:                                               ; preds = %40
  br label %80

80:                                               ; preds = %79, %78
  %81 = load i64, i64* %10, align 8
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %80, %38, %30
  %83 = load i64, i64* %4, align 8
  ret i64 %83
}

declare dso_local i64 @mkv_read_element_data_uint(%struct.TYPE_15__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
