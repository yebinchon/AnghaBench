; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_co64.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_co64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__**, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@MP4_SAMPLE_TABLE_CO64 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"entry_count\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @mp4_write_box_co64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_write_box_co64(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %6 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_22__* %10, %struct.TYPE_22__** %4, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %12, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %13, i64 %16
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %5, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %24 = call i32 @WRITE_U8(%struct.TYPE_21__* %23, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %26 = call i32 @WRITE_U24(%struct.TYPE_21__* %25, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = load i64, i64* @MP4_SAMPLE_TABLE_CO64, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @WRITE_U32(%struct.TYPE_21__* %27, i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %1
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = load i64, i64* @MP4_SAMPLE_TABLE_CO64, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 8
  %51 = call i32 @WRITE_BYTES(%struct.TYPE_21__* %42, i32 0, i32 %50)
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %53 = call i32 @STREAM_STATUS(%struct.TYPE_21__* %52)
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %1
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %56 = call i32 @STREAM_STATUS(%struct.TYPE_21__* %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %41
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @WRITE_U8(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @WRITE_U24(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @WRITE_BYTES(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
