; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_stsc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_stsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_23__**, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_29__ = type { i64, i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@MP4_SAMPLE_TABLE_STSC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"entry_count\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"first_chunk\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"samples_per_chunk\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"sample_description_index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_28__*)* @mp4_write_box_stsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mp4_write_box_stsc(%struct.TYPE_28__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_29__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %4, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %20, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %21, i64 %24
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  store %struct.TYPE_27__* %30, %struct.TYPE_27__** %5, align 8
  %31 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %31, i64* %6, align 8
  store i64 0, i64* %8, align 8
  store i64 -1, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %32 = call i32 @memset(%struct.TYPE_29__* %7, i32 0, i32 16)
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %34 = call i32 @WRITE_U8(%struct.TYPE_28__* %33, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %36 = call i32 @WRITE_U24(%struct.TYPE_28__* %35, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %39, align 8
  %41 = load i64, i64* @MP4_SAMPLE_TABLE_STSC, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @WRITE_U32(%struct.TYPE_28__* %37, i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %1
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %54, align 8
  %56 = load i64, i64* @MP4_SAMPLE_TABLE_STSC, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 12
  %61 = call i32 @WRITE_BYTES(%struct.TYPE_28__* %52, i32 0, i32 %60)
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %63 = call i64 @STREAM_STATUS(%struct.TYPE_28__* %62)
  store i64 %63, i64* %2, align 8
  br label %149

64:                                               ; preds = %1
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @INT64_C(i32 0)
  %70 = call i32 @vc_container_io_seek(i32 %68, i32 %69)
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %72 = call i64 @mp4_writer_read_sample_from_temp(%struct.TYPE_28__* %71, %struct.TYPE_29__* %7)
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %114, %64
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %121

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %114

85:                                               ; preds = %77
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %85
  %90 = load i32, i32* %11, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @WRITE_U32(%struct.TYPE_28__* %95, i32 %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @WRITE_U32(%struct.TYPE_28__* %98, i32 %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %102 = call i32 @WRITE_U32(%struct.TYPE_28__* %101, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i32, i32* %10, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %94, %89
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %107

107:                                              ; preds = %105, %85
  %108 = load i64, i64* %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %108, %110
  store i64 %111, i64* %9, align 8
  %112 = load i32, i32* %13, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %107, %84
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %8, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* %8, align 8
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %120 = call i64 @mp4_writer_read_sample_from_temp(%struct.TYPE_28__* %119, %struct.TYPE_29__* %7)
  store i64 %120, i64* %6, align 8
  br label %73

121:                                              ; preds = %73
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %121
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @WRITE_U32(%struct.TYPE_28__* %125, i32 %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @WRITE_U32(%struct.TYPE_28__* %128, i32 %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %132 = call i32 @WRITE_U32(%struct.TYPE_28__* %131, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %133 = load i32, i32* %10, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %124, %121
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %138, align 8
  %140 = load i64, i64* @MP4_SAMPLE_TABLE_STSC, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %136, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @vc_container_assert(i32 %145)
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %148 = call i64 @STREAM_STATUS(%struct.TYPE_28__* %147)
  store i64 %148, i64* %2, align 8
  br label %149

149:                                              ; preds = %135, %51
  %150 = load i64, i64* %2, align 8
  ret i64 %150
}

declare dso_local i32 @memset(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @WRITE_U8(%struct.TYPE_28__*, i32, i8*) #1

declare dso_local i32 @WRITE_U24(%struct.TYPE_28__*, i32, i8*) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_28__*, i32, i8*) #1

declare dso_local i32 @WRITE_BYTES(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_28__*) #1

declare dso_local i32 @vc_container_io_seek(i32, i32) #1

declare dso_local i32 @INT64_C(i32) #1

declare dso_local i64 @mp4_writer_read_sample_from_temp(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @vc_container_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
