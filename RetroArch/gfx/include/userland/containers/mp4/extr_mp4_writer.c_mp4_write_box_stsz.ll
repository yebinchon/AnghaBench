; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_stsz.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_stsz.c"
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
%struct.TYPE_29__ = type { i64, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"sample_size\00", align 1
@MP4_SAMPLE_TABLE_STSZ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"sample_count\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"entry_size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_28__*)* @mp4_write_box_stsz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mp4_write_box_stsz(%struct.TYPE_28__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_29__, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %9 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %4, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %15, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %16, i64 %19
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  store %struct.TYPE_27__* %25, %struct.TYPE_27__** %5, align 8
  %26 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %26, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %27 = call i32 @memset(%struct.TYPE_29__* %7, i32 0, i32 16)
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %29 = call i32 @WRITE_U8(%struct.TYPE_28__* %28, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %31 = call i32 @WRITE_U24(%struct.TYPE_28__* %30, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %33 = call i32 @WRITE_U32(%struct.TYPE_28__* %32, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %36, align 8
  %38 = load i64, i64* @MP4_SAMPLE_TABLE_STSZ, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @WRITE_U32(%struct.TYPE_28__* %34, i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %1
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %51, align 8
  %53 = load i64, i64* @MP4_SAMPLE_TABLE_STSZ, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 4
  %58 = call i32 @WRITE_BYTES(%struct.TYPE_28__* %49, i32 0, i32 %57)
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %60 = call i64 @STREAM_STATUS(%struct.TYPE_28__* %59)
  store i64 %60, i64* %2, align 8
  br label %106

61:                                               ; preds = %1
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @INT64_C(i32 0)
  %67 = call i32 @vc_container_io_seek(i32 %65, i32 %66)
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %69 = call i64 @mp4_writer_read_sample_from_temp(%struct.TYPE_28__* %68, %struct.TYPE_29__* %7)
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %89, %61
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %89

82:                                               ; preds = %74
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @WRITE_U32(%struct.TYPE_28__* %83, i32 %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* %8, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %82, %81
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %91 = call i64 @mp4_writer_read_sample_from_temp(%struct.TYPE_28__* %90, %struct.TYPE_29__* %7)
  store i64 %91, i64* %6, align 8
  br label %70

92:                                               ; preds = %70
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %95, align 8
  %97 = load i64, i64* @MP4_SAMPLE_TABLE_STSZ, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %93, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @vc_container_assert(i32 %102)
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %105 = call i64 @STREAM_STATUS(%struct.TYPE_28__* %104)
  store i64 %105, i64* %2, align 8
  br label %106

106:                                              ; preds = %92, %48
  %107 = load i64, i64* %2, align 8
  ret i64 %107
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
