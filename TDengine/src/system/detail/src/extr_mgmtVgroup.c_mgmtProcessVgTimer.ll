; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtVgroup.c_mgmtProcessVgTimer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtVgroup.c_mgmtProcessVgTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32*, i32 }

@TSDB_VG_STATUS_IN_PROGRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"db:%s, set vgstatus from %d to %d\00", align 1
@TSDB_VG_STATUS_READY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmtProcessVgTimer(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %9 = icmp eq %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TSDB_VG_STATUS_IN_PROGRESS, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TSDB_VG_STATUS_READY, align 8
  %25 = call i32 @mTrace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %23, i64 %24)
  %26 = load i64, i64* @TSDB_VG_STATUS_READY, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %17, %11
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %10
  ret void
}

declare dso_local i32 @mTrace(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
