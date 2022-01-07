; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_soun_damr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_soun_damr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__**, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"mode_set\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"mode_change_period\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"frame_per_second\00", align 1
@VC_CONTAINER_CODEC_AMRNB = common dso_local global i64 0, align 8
@VC_CONTAINER_CODEC_AMRWB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32)* @mp4_read_box_soun_damr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_read_box_soun_damr(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %5, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %14, i64 %17
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %6, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = call i32 @MP4_SKIP_FOURCC(%struct.TYPE_17__* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = call i32 @MP4_SKIP_U8(%struct.TYPE_17__* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %25 = call i32 @MP4_SKIP_U8(%struct.TYPE_17__* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = call i32 @MP4_SKIP_U8(%struct.TYPE_17__* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = call i32 @MP4_SKIP_U8(%struct.TYPE_17__* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VC_CONTAINER_CODEC_AMRNB, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %2
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  store i32 8000, i32* %51, align 4
  br label %69

52:                                               ; preds = %2
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VC_CONTAINER_CODEC_AMRWB, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  store i32 16000, i32* %67, align 4
  br label %68

68:                                               ; preds = %60, %52
  br label %69

69:                                               ; preds = %68, %44
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = call i32 @STREAM_STATUS(%struct.TYPE_17__* %70)
  ret i32 %71
}

declare dso_local i32 @MP4_SKIP_FOURCC(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U8(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
