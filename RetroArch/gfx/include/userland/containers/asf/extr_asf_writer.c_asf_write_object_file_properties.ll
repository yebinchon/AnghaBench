; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_writer.c_asf_write_object_file_properties.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_writer.c_asf_write_object_file_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@guid_null = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"File ID\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"File Size\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Creation Date\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Data Packets Count\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Play Duration\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Send Duration\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Preroll\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Minimum Data Packet Size\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Maximum Data Packet Size\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Maximum Bitrate\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @asf_write_object_file_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asf_write_object_file_properties(%struct.TYPE_9__* %0) #0 {
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
  %10 = call i32 @WRITE_GUID(%struct.TYPE_9__* %9, i32* @guid_null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = call i32 @WRITE_U64(%struct.TYPE_9__* %11, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = call i32 @WRITE_U64(%struct.TYPE_9__* %13, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = call i32 @WRITE_U64(%struct.TYPE_9__* %15, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = call i32 @WRITE_U64(%struct.TYPE_9__* %17, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = call i32 @WRITE_U64(%struct.TYPE_9__* %19, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = call i32 @WRITE_U64(%struct.TYPE_9__* %21, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = call i32 @WRITE_U32(%struct.TYPE_9__* %23, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @WRITE_U32(%struct.TYPE_9__* %25, i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @WRITE_U32(%struct.TYPE_9__* %30, i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = call i32 @WRITE_U32(%struct.TYPE_9__* %35, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %37 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  ret i32 %37
}

declare dso_local i32 @WRITE_GUID(%struct.TYPE_9__*, i32*, i8*) #1

declare dso_local i32 @WRITE_U64(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_9__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
