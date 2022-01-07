; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_mdhd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_mdhd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@MP4_64BITS_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"creation_time\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"modification_time\00", align 1
@MP4_TIMESCALE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"timescale\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"pre_defined\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @mp4_write_box_mdhd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_write_box_mdhd(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load i32, i32* @MP4_64BITS_TIME, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @WRITE_U8(%struct.TYPE_9__* %5, i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = call i32 @WRITE_U24(%struct.TYPE_9__* %8, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = call i32 @WRITE_U64(%struct.TYPE_9__* %13, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = call i32 @WRITE_U64(%struct.TYPE_9__* %15, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = load i32, i32* @MP4_TIMESCALE, align 4
  %19 = call i32 @WRITE_U32(%struct.TYPE_9__* %17, i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MP4_TIMESCALE, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sdiv i32 %25, 1000000
  %27 = call i32 @WRITE_U64(%struct.TYPE_9__* %20, i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %44

28:                                               ; preds = %1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = call i32 @WRITE_U32(%struct.TYPE_9__* %29, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = call i32 @WRITE_U32(%struct.TYPE_9__* %31, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = load i32, i32* @MP4_TIMESCALE, align 4
  %35 = call i32 @WRITE_U32(%struct.TYPE_9__* %33, i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MP4_TIMESCALE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sdiv i32 %41, 1000000
  %43 = call i32 @WRITE_U32(%struct.TYPE_9__* %36, i32 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %28, %12
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = call i32 @WRITE_U16(%struct.TYPE_9__* %45, i32 21956, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = call i32 @WRITE_U16(%struct.TYPE_9__* %47, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = call i32 @STREAM_STATUS(%struct.TYPE_9__* %49)
  ret i32 %50
}

declare dso_local i32 @WRITE_U8(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @WRITE_U24(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @WRITE_U64(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @WRITE_U16(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
