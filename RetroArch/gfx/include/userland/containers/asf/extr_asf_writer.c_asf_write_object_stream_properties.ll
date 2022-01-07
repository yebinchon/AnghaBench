; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_writer.c_asf_write_object_stream_properties.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_writer.c_asf_write_object_stream_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__**, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@guid_null = common dso_local global i32 0, align 4
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@asf_guid_stream_type_video = common dso_local global i32 0, align 4
@VC_CONTAINER_ES_TYPE_AUDIO = common dso_local global i64 0, align 8
@asf_guid_stream_type_audio = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Stream Type\00", align 1
@asf_guid_error_correction = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Error Correction Type\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Time Offset\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Type-Specific Data Length\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Error Correction Data Length\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @asf_write_object_stream_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_write_object_stream_properties(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %8 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %4, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32* @guid_null, i32** %7, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %19, i64 %21
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %1
  store i32* @asf_guid_stream_type_video, i32** %7, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %33, i64 %35
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 51, %41
  store i32 %42, i32* %6, align 4
  br label %71

43:                                               ; preds = %1
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %46, i64 %48
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VC_CONTAINER_ES_TYPE_AUDIO, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %43
  store i32* @asf_guid_stream_type_audio, i32** %7, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %60, i64 %62
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 18, %68
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %57, %43
  br label %71

71:                                               ; preds = %70, %30
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @WRITE_GUID(%struct.TYPE_16__* %72, i32* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %76 = call i32 @WRITE_GUID(%struct.TYPE_16__* %75, i32* @asf_guid_error_correction, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %78 = call i32 @WRITE_U64(%struct.TYPE_16__* %77, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @WRITE_U32(%struct.TYPE_16__* %79, i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %83 = call i32 @WRITE_U32(%struct.TYPE_16__* %82, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %85 = load i32, i32* %5, align 4
  %86 = add i32 %85, 1
  %87 = call i32 @WRITE_U16(%struct.TYPE_16__* %84, i32 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %89 = call i32 @WRITE_U32(%struct.TYPE_16__* %88, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %142

92:                                               ; preds = %71
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %95, i64 %97
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %92
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %110, i64 %112
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = call i32 @asf_write_bitmapinfoheader(%struct.TYPE_16__* %107, %struct.TYPE_18__* %114)
  store i32 %115, i32* %3, align 4
  br label %141

116:                                              ; preds = %92
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %119, i64 %121
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @VC_CONTAINER_ES_TYPE_AUDIO, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %116
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %134, i64 %136
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %137, align 8
  %139 = call i32 @asf_write_waveformatex(%struct.TYPE_16__* %131, %struct.TYPE_18__* %138)
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %130, %116
  br label %141

141:                                              ; preds = %140, %106
  br label %142

142:                                              ; preds = %141, %71
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @WRITE_GUID(%struct.TYPE_16__*, i32*, i8*) #1

declare dso_local i32 @WRITE_U64(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @WRITE_U16(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @asf_write_bitmapinfoheader(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i32 @asf_write_waveformatex(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
