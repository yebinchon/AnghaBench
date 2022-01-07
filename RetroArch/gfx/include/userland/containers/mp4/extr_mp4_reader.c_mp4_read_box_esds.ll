; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_esds.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_esds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_25__**, %struct.TYPE_21__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_21__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"es_id\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"depend_on_es_id\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"url_size\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"OCR_es_id\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"object_type_indication\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"stream_type\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"buffer_size_db\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"max_bitrate\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"avg_bitrate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_26__*, i64)* @mp4_read_box_esds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mp4_read_box_esds(%struct.TYPE_26__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  store %struct.TYPE_27__* %17, %struct.TYPE_27__** %6, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %19, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %20, i64 %23
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  store %struct.TYPE_25__* %25, %struct.TYPE_25__** %7, align 8
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %27 = call i32 @MP4_SKIP_U8(%struct.TYPE_26__* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %29 = call i32 @MP4_SKIP_U24(%struct.TYPE_26__* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %31 = call i64 @mp4_read_esds_descriptor_header(%struct.TYPE_26__* %30, i64* %5, i32* %9, i32* %10)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %3, align 8
  br label %152

37:                                               ; preds = %2
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %79

40:                                               ; preds = %37
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %42 = call i32 @MP4_SKIP_U16(%struct.TYPE_26__* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %44 = call i8* @MP4_READ_U8(%struct.TYPE_26__* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, 128
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %51 = call i32 @MP4_SKIP_U16(%struct.TYPE_26__* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %40
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, 64
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %58 = call i8* @MP4_READ_U8(%struct.TYPE_26__* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %12, align 4
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @MP4_SKIP_STRING(%struct.TYPE_26__* %60, i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %56, %52
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, 32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %69 = call i32 @MP4_SKIP_U16(%struct.TYPE_26__* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %63
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %72 = call i64 @mp4_read_esds_descriptor_header(%struct.TYPE_26__* %71, i64* %5, i32* %9, i32* %10)
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i64, i64* %8, align 8
  store i64 %77, i64* %3, align 8
  br label %152

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %37
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 4
  br i1 %81, label %82, label %149

82:                                               ; preds = %79
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %84 = call i8* @MP4_READ_U8(%struct.TYPE_26__* %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  store i8* %84, i8** %90, align 8
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %92 = call i32 @MP4_SKIP_U8(%struct.TYPE_26__* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %94 = call i32 @MP4_SKIP_U24(%struct.TYPE_26__* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %96 = call i32 @MP4_SKIP_U32(%struct.TYPE_26__* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %98 = call i32 @MP4_READ_U32(%struct.TYPE_26__* %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 2
  store i32 %98, i32* %102, align 4
  %103 = load i64, i64* %5, align 8
  %104 = icmp sle i64 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %82
  %106 = load i32, i32* %9, align 4
  %107 = icmp sle i32 %106, 13
  br i1 %107, label %108, label %111

108:                                              ; preds = %105, %82
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %110 = call i64 @STREAM_STATUS(%struct.TYPE_26__* %109)
  store i64 %110, i64* %3, align 8
  br label %152

111:                                              ; preds = %105
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %113 = call i64 @mp4_read_esds_descriptor_header(%struct.TYPE_26__* %112, i64* %5, i32* %9, i32* %10)
  store i64 %113, i64* %8, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i64, i64* %8, align 8
  store i64 %118, i64* %3, align 8
  br label %152

119:                                              ; preds = %111
  %120 = load i32, i32* %10, align 4
  %121 = icmp eq i32 %120, 5
  br i1 %121, label %122, label %148

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %122
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i64 @vc_container_track_allocate_extradata(%struct.TYPE_26__* %126, %struct.TYPE_25__* %127, i32 %128)
  store i64 %129, i64* %8, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  %134 = load i64, i64* %8, align 8
  store i64 %134, i64* %3, align 8
  br label %152

135:                                              ; preds = %125
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @MP4_READ_BYTES(%struct.TYPE_26__* %136, i32 %141, i32 %142)
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 1
  store i32 %143, i32* %147, align 4
  br label %148

148:                                              ; preds = %135, %122, %119
  br label %149

149:                                              ; preds = %148, %79
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %151 = call i64 @STREAM_STATUS(%struct.TYPE_26__* %150)
  store i64 %151, i64* %3, align 8
  br label %152

152:                                              ; preds = %149, %133, %117, %108, %76, %35
  %153 = load i64, i64* %3, align 8
  ret i64 %153
}

declare dso_local i32 @MP4_SKIP_U8(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U24(%struct.TYPE_26__*, i8*) #1

declare dso_local i64 @mp4_read_esds_descriptor_header(%struct.TYPE_26__*, i64*, i32*, i32*) #1

declare dso_local i32 @MP4_SKIP_U16(%struct.TYPE_26__*, i8*) #1

declare dso_local i8* @MP4_READ_U8(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @MP4_SKIP_STRING(%struct.TYPE_26__*, i32, i8*) #1

declare dso_local i32 @MP4_SKIP_U32(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @MP4_READ_U32(%struct.TYPE_26__*, i8*) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_26__*) #1

declare dso_local i64 @vc_container_track_allocate_extradata(%struct.TYPE_26__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @MP4_READ_BYTES(%struct.TYPE_26__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
