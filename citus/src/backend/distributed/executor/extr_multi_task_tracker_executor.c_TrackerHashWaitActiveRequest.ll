; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_TrackerHashWaitActiveRequest.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_TrackerHashWaitActiveRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32 }

@CLIENT_QUERY_DONE = common dso_local global i64 0, align 8
@NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @TrackerHashWaitActiveRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TrackerHashWaitActiveRequest(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @hash_seq_init(i32* %4, i32* %7)
  %9 = call i64 @hash_seq_search(i32* %4)
  %10 = inttoptr i64 %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %3, align 8
  br label %11

11:                                               ; preds = %41, %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %11
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = call i32 @TrackerConnectionUp(%struct.TYPE_3__* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @MultiClientQueryStatus(i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @CLIENT_QUERY_DONE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load i32, i32* @NIL, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %32, %24
  br label %41

41:                                               ; preds = %40, %19, %14
  %42 = call i64 @hash_seq_search(i32* %4)
  %43 = inttoptr i64 %42 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %3, align 8
  br label %11

44:                                               ; preds = %11
  ret void
}

declare dso_local i32 @hash_seq_init(i32*, i32*) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32 @TrackerConnectionUp(%struct.TYPE_3__*) #1

declare dso_local i64 @MultiClientQueryStatus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
