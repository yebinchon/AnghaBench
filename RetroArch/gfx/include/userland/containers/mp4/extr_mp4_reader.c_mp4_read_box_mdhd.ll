; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_mdhd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_mdhd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__**, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"creation_time\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"modification_time\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"timescale\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"pre_defined\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32)* @mp4_read_box_mdhd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_read_box_mdhd(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %5, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %16, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %17, i64 %20
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %6, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = call i32 @MP4_READ_U8(%struct.TYPE_20__* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %30 = call i32 @MP4_SKIP_U24(%struct.TYPE_20__* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %2
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %35 = call i32 @MP4_SKIP_U64(%struct.TYPE_20__* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %37 = call i32 @MP4_SKIP_U64(%struct.TYPE_20__* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %39 = call i32 @MP4_READ_U32(%struct.TYPE_20__* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %41 = call i32 @MP4_READ_U64(%struct.TYPE_20__* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %41, i32* %9, align 4
  br label %51

42:                                               ; preds = %2
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %44 = call i32 @MP4_SKIP_U32(%struct.TYPE_20__* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %46 = call i32 @MP4_SKIP_U32(%struct.TYPE_20__* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %48 = call i32 @MP4_READ_U32(%struct.TYPE_20__* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %48, i32* %8, align 4
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %50 = call i32 @MP4_READ_U32(%struct.TYPE_20__* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %42, %33
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %55, 1000000
  %57 = load i32, i32* %8, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = call i32 @MP4_SKIP_U16(%struct.TYPE_20__* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %66 = call i32 @MP4_SKIP_U16(%struct.TYPE_20__* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %68 = call i32 @STREAM_STATUS(%struct.TYPE_20__* %67)
  ret i32 %68
}

declare dso_local i32 @MP4_READ_U8(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U24(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U64(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @MP4_READ_U32(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @MP4_READ_U64(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U32(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U16(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
