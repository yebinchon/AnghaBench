; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_TrackerHashLookup.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_TrackerHashLookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@WORKER_LENGTH = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"could not find task tracker for node \22%s:%u\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (i32*, i8*, i32)* @TrackerHashLookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @TrackerHashLookup(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @WORKER_LENGTH, align 4
  %14 = call i32 @memset(i32 %12, i32 0, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @WORKER_LENGTH, align 4
  %19 = call i32 @strlcpy(i32 %16, i8* %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = bitcast %struct.TYPE_3__* %10 to i8*
  store i8* %22, i8** %8, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @HASH_FIND, align 4
  %26 = call i64 @hash_search(i32* %23, i8* %24, i32 %25, i32* %9)
  %27 = inttoptr i64 %26 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %7, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = icmp eq %struct.TYPE_3__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30, %3
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36)
  %38 = call i32 @ereport(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %30
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  ret %struct.TYPE_3__* %40
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
