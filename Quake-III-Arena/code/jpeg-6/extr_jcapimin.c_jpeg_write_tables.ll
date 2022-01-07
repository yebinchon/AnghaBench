; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcapimin.c_jpeg_write_tables.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcapimin.c_jpeg_write_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_14__*)* }
%struct.TYPE_12__ = type { i32 (i32)* }

@CSTATE_START = common dso_local global i64 0, align 8
@JERR_BAD_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jpeg_write_tables(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %3 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CSTATE_START, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = load i32, i32* @JERR_BAD_STATE, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @ERREXIT1(%struct.TYPE_14__* %9, i32 %10, i64 %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = ptrtoint %struct.TYPE_14__* %21 to i32
  %23 = call i32 %20(i32 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %27, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = call i32 %28(%struct.TYPE_14__* %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %32 = call i32 @jinit_marker_writer(%struct.TYPE_14__* %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %39 = call i32 %37(%struct.TYPE_14__* %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = call i32 %44(%struct.TYPE_14__* %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %48 = ptrtoint %struct.TYPE_14__* %47 to i32
  %49 = call i32 @jpeg_abort(i32 %48)
  ret void
}

declare dso_local i32 @ERREXIT1(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @jinit_marker_writer(%struct.TYPE_14__*) #1

declare dso_local i32 @jpeg_abort(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
