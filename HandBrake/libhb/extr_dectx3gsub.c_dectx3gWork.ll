; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_dectx3gsub.c_dectx3gWork.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_dectx3gsub.c_dectx3gWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [43 x i8] c"dectx3gsub: subtitle packet lacks duration\00", align 1
@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_WORK_DONE = common dso_local global i32 0, align 4
@HB_WORK_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__**, %struct.TYPE_11__**)* @dectx3gWork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dectx3gWork(%struct.TYPE_10__* %0, %struct.TYPE_11__** %1, %struct.TYPE_11__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__**, align 8
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %8, align 8
  %13 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %9, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 @hb_log(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %32, align 8
  %33 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %33, align 8
  %34 = load i32, i32* @HB_WORK_DONE, align 4
  store i32 %34, i32* %4, align 4
  br label %41

35:                                               ; preds = %22
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = call %struct.TYPE_11__* @tx3g_decode_to_ssa(i32* %36, %struct.TYPE_11__* %37)
  %39 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %39, align 8
  %40 = load i32, i32* @HB_WORK_OK, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @hb_log(i8*) #1

declare dso_local %struct.TYPE_11__* @tx3g_decode_to_ssa(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
