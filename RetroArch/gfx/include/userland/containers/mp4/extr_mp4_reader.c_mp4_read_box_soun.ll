; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_soun.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_soun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__**, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i8*, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"data_reference_index\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"revision_level\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"channelcount\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"samplesize\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"pre_defined\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"samplerate\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"samplerate_fp_low\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"samples_per_packet\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"bytes_per_packet\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"bytes_per_frame\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"bytes_per_sample\00", align 1
@MP4_BOX_TYPE_SOUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i64)* @mp4_read_box_soun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_read_box_soun(%struct.TYPE_20__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %6, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %16, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %17, i64 %20
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %29, %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %24, 6
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %28 = call i32 @MP4_SKIP_U8(%struct.TYPE_20__* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %23

32:                                               ; preds = %23
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = call i32 @MP4_SKIP_U16(%struct.TYPE_20__* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %36 = call i8* @MP4_READ_U16(%struct.TYPE_20__* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %39 = call i32 @MP4_SKIP_U16(%struct.TYPE_20__* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %41 = call i32 @MP4_SKIP_U32(%struct.TYPE_20__* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = call i8* @MP4_READ_U16(%struct.TYPE_20__* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  store i8* %43, i8** %50, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %52 = call i8* @MP4_READ_U16(%struct.TYPE_20__* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  store i8* %52, i8** %59, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %61 = call i32 @MP4_SKIP_U16(%struct.TYPE_20__* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = call i32 @MP4_SKIP_U16(%struct.TYPE_20__* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %65 = call i8* @MP4_READ_U16(%struct.TYPE_20__* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  store i8* %65, i8** %72, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %74 = call i32 @MP4_SKIP_U16(%struct.TYPE_20__* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %86

77:                                               ; preds = %32
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %79 = call i32 @MP4_SKIP_U32(%struct.TYPE_20__* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = call i32 @MP4_SKIP_U32(%struct.TYPE_20__* %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %83 = call i32 @MP4_SKIP_U32(%struct.TYPE_20__* %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %85 = call i32 @MP4_SKIP_U32(%struct.TYPE_20__* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  br label %86

86:                                               ; preds = %77, %32
  %87 = load i64, i64* %5, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load i32, i32* @MP4_BOX_TYPE_SOUN, align 4
  %93 = call i32 @mp4_read_box(%struct.TYPE_20__* %90, i64 %91, i32 %92)
  store i32 %93, i32* %3, align 4
  br label %97

94:                                               ; preds = %86
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %96 = call i32 @STREAM_STATUS(%struct.TYPE_20__* %95)
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %94, %89
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @MP4_SKIP_U8(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U16(%struct.TYPE_20__*, i8*) #1

declare dso_local i8* @MP4_READ_U16(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U32(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @mp4_read_box(%struct.TYPE_20__*, i64, i32) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
