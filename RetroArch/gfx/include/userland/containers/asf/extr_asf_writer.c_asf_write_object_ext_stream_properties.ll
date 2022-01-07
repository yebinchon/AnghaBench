; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_writer.c_asf_write_object_ext_stream_properties.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_writer.c_asf_write_object_ext_stream_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"Start Time\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"End Time\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Data Bitrate\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Buffer Size\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Initial Buffer Fullness\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Alternate Data Bitrate\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Alternate Buffer Size\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Alternate Initial Buffer Fullness\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Maximum Object Size\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Stream Number\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Stream Language ID Index\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Average Time Per Frame\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Stream Name Count\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Payload Extension System Count\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @asf_write_object_ext_stream_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_write_object_ext_stream_properties(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = call i32 @WRITE_U64(%struct.TYPE_9__* %9, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = call i32 @WRITE_U64(%struct.TYPE_9__* %11, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = call i32 @WRITE_U32(%struct.TYPE_9__* %13, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = call i32 @WRITE_U32(%struct.TYPE_9__* %15, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = call i32 @WRITE_U32(%struct.TYPE_9__* %17, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = call i32 @WRITE_U32(%struct.TYPE_9__* %19, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = call i32 @WRITE_U32(%struct.TYPE_9__* %21, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = call i32 @WRITE_U32(%struct.TYPE_9__* %23, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = call i32 @WRITE_U32(%struct.TYPE_9__* %25, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = call i32 @WRITE_U32(%struct.TYPE_9__* %27, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = call i32 @WRITE_U16(%struct.TYPE_9__* %29, i64 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = call i32 @WRITE_U16(%struct.TYPE_9__* %35, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = call i32 @WRITE_U64(%struct.TYPE_9__* %37, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = call i32 @WRITE_U16(%struct.TYPE_9__* %39, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = call i32 @WRITE_U16(%struct.TYPE_9__* %41, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  %43 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  ret i32 %43
}

declare dso_local i32 @WRITE_U64(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @WRITE_U16(%struct.TYPE_9__*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
