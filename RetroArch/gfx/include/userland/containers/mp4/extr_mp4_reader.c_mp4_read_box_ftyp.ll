; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_ftyp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_ftyp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"major_brand\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"minor_version\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"compatible_brands\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @mp4_read_box_ftyp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_read_box_ftyp(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = call i32 @MP4_READ_FOURCC(%struct.TYPE_10__* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = call i32 @MP4_SKIP_U32(%struct.TYPE_10__* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %20, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 4
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = call i32 @MP4_SKIP_FOURCC(%struct.TYPE_10__* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %17

23:                                               ; preds = %17
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = call i32 @STREAM_STATUS(%struct.TYPE_10__* %24)
  ret i32 %25
}

declare dso_local i32 @MP4_READ_FOURCC(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U32(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @MP4_SKIP_FOURCC(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
