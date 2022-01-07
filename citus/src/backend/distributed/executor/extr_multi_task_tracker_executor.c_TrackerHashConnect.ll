; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_TrackerHashConnect.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_TrackerHashConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRACKER_CONNECTED = common dso_local global i64 0, align 8
@TRACKER_CONNECTION_FAILED = common dso_local global i64 0, align 8
@RemoteTaskCheckInterval = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @TrackerHashConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TrackerHashConnect(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @hash_get_num_entries(i32* %9)
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %40, %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  store i32* null, i32** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %4, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @hash_seq_init(i32* %6, i32* %17)
  %19 = call i64 @hash_seq_search(i32* %6)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %5, align 8
  br label %21

21:                                               ; preds = %37, %16
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @TrackerConnectPoll(i32* %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @TRACKER_CONNECTED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @TRACKER_CONNECTION_FAILED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %24
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %34, %30
  %38 = call i64 @hash_seq_search(i32* %6)
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %5, align 8
  br label %21

40:                                               ; preds = %21
  %41 = load i64, i64* @RemoteTaskCheckInterval, align 8
  %42 = mul nsw i64 %41, 1000
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @pg_usleep(i64 %43)
  br label %12

45:                                               ; preds = %12
  ret void
}

declare dso_local i32 @hash_get_num_entries(i32*) #1

declare dso_local i32 @hash_seq_init(i32*, i32*) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i64 @TrackerConnectPoll(i32*) #1

declare dso_local i32 @pg_usleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
