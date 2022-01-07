; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_stts.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_stts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_22__**, %struct.TYPE_20__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_28__ = type { i32, i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@MP4_SAMPLE_TABLE_STTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"entry_count\00", align 1
@MP4_TIMESCALE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"sample_count\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"sample_delta\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_27__*)* @mp4_write_box_stts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mp4_write_box_stts(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_28__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %4, align 8
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %17, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %18, i64 %21
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  store %struct.TYPE_26__* %27, %struct.TYPE_26__** %5, align 8
  %28 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %28, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %30 = call i32 @WRITE_U8(%struct.TYPE_27__* %29, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %32 = call i32 @WRITE_U24(%struct.TYPE_27__* %31, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %37 = load i64, i64* @MP4_SAMPLE_TABLE_STTS, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @WRITE_U32(%struct.TYPE_27__* %33, i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %1
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %50, align 8
  %52 = load i64, i64* @MP4_SAMPLE_TABLE_STTS, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, 8
  %57 = call i32 @WRITE_BYTES(%struct.TYPE_27__* %48, i32 0, i32 %56)
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %59 = call i64 @STREAM_STATUS(%struct.TYPE_27__* %58)
  store i64 %59, i64* %2, align 8
  br label %121

60:                                               ; preds = %1
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @INT64_C(i32 0)
  %66 = call i32 @vc_container_io_seek(i32 %64, i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %69 = call i64 @mp4_writer_read_sample_from_temp(%struct.TYPE_27__* %68, %struct.TYPE_28__* %7)
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %104, %60
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %107

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %104

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MP4_TIMESCALE, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sdiv i32 %86, 1000000
  %88 = load i32, i32* %9, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %92, %82
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %95 = call i32 @WRITE_U32(%struct.TYPE_27__* %94, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @WRITE_U32(%struct.TYPE_27__* %96, i32 %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i32, i32* %8, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %93, %81
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %106 = call i64 @mp4_writer_read_sample_from_temp(%struct.TYPE_27__* %105, %struct.TYPE_28__* %7)
  store i64 %106, i64* %6, align 8
  br label %70

107:                                              ; preds = %70
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %110, align 8
  %112 = load i64, i64* @MP4_SAMPLE_TABLE_STTS, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %108, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @vc_container_assert(i32 %117)
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %120 = call i64 @STREAM_STATUS(%struct.TYPE_27__* %119)
  store i64 %120, i64* %2, align 8
  br label %121

121:                                              ; preds = %107, %47
  %122 = load i64, i64* %2, align 8
  ret i64 %122
}

declare dso_local i32 @WRITE_U8(%struct.TYPE_27__*, i32, i8*) #1

declare dso_local i32 @WRITE_U24(%struct.TYPE_27__*, i32, i8*) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_27__*, i32, i8*) #1

declare dso_local i32 @WRITE_BYTES(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_27__*) #1

declare dso_local i32 @vc_container_io_seek(i32, i32) #1

declare dso_local i32 @INT64_C(i32) #1

declare dso_local i64 @mp4_writer_read_sample_from_temp(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local i32 @vc_container_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
