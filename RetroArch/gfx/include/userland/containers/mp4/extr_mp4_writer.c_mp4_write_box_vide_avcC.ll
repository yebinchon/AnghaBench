; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_vide_avcC.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_vide_avcC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__**, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @mp4_write_box_vide_avcC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_write_box_vide_avcC(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %3, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %11, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %12, i64 %15
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %4, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 8
  %25 = call i32 @WRITE_U32(%struct.TYPE_14__* %18, i64 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = call i32 @VC_FOURCC(i8 signext 97, i8 signext 118, i8 signext 99, i8 signext 67)
  %28 = call i32 @WRITE_FOURCC(%struct.TYPE_14__* %26, i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @WRITE_BYTES(%struct.TYPE_14__* %29, i32 %34, i64 %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %42 = call i32 @STREAM_STATUS(%struct.TYPE_14__* %41)
  ret i32 %42
}

declare dso_local i32 @WRITE_U32(%struct.TYPE_14__*, i64, i8*) #1

declare dso_local i32 @WRITE_FOURCC(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @WRITE_BYTES(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
