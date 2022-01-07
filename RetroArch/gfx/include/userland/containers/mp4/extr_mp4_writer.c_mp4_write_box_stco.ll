; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_stco.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_stco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_23__**, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_29__ = type { i64, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@MP4_SAMPLE_TABLE_STCO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"entry_count\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"chunk_offset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_28__*)* @mp4_write_box_stco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mp4_write_box_stco(%struct.TYPE_28__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_29__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %11 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %4, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %17, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %18, i64 %21
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  store %struct.TYPE_27__* %27, %struct.TYPE_27__** %5, align 8
  %28 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %28, i64* %6, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %32 = call i32 @memset(%struct.TYPE_29__* %7, i32 0, i32 16)
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %34 = call i32 @WRITE_U8(%struct.TYPE_28__* %33, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %36 = call i32 @WRITE_U24(%struct.TYPE_28__* %35, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %39, align 8
  %41 = load i64, i64* @MP4_SAMPLE_TABLE_STCO, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @WRITE_U32(%struct.TYPE_28__* %37, i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %1
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %54, align 8
  %56 = load i64, i64* @MP4_SAMPLE_TABLE_STCO, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 4
  %61 = call i32 @WRITE_BYTES(%struct.TYPE_28__* %52, i32 0, i32 %60)
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %63 = call i64 @STREAM_STATUS(%struct.TYPE_28__* %62)
  store i64 %63, i64* %2, align 8
  br label %121

64:                                               ; preds = %1
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @INT64_C(i32 0)
  %70 = call i32 @vc_container_io_seek(i32 %68, i32 %69)
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %72 = call i64 @mp4_writer_read_sample_from_temp(%struct.TYPE_28__* %71, %struct.TYPE_29__* %7)
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %100, %64
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %100

85:                                               ; preds = %77
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @WRITE_U32(%struct.TYPE_28__* %90, i32 %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* %10, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %89, %85
  %96 = load i32, i32* %8, align 4
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %96, %98
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %95, %84
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %106 = call i64 @mp4_writer_read_sample_from_temp(%struct.TYPE_28__* %105, %struct.TYPE_29__* %7)
  store i64 %106, i64* %6, align 8
  br label %73

107:                                              ; preds = %73
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %110, align 8
  %112 = load i64, i64* @MP4_SAMPLE_TABLE_STCO, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %108, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @vc_container_assert(i32 %117)
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %120 = call i64 @STREAM_STATUS(%struct.TYPE_28__* %119)
  store i64 %120, i64* %2, align 8
  br label %121

121:                                              ; preds = %107, %51
  %122 = load i64, i64* %2, align 8
  ret i64 %122
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
