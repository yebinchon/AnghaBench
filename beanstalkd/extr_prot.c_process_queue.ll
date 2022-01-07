; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_prot.c_process_queue.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_prot.c_process_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_9__, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@ready_ct = common dso_local global i32 0, align 4
@URGENT_THRESHOLD = common dso_local global i64 0, align 8
@global_stat = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"waiting_conns is empty\00", align 1
@MSG_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @process_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_queue() #0 {
  %1 = alloca %struct.TYPE_12__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %1, align 8
  %4 = call i32 (...) @nanoseconds()
  store i32 %4, i32* %2, align 4
  br label %5

5:                                                ; preds = %46, %44, %0
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.TYPE_12__* @next_awaited_job(i32 %6)
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %1, align 8
  %8 = icmp ne %struct.TYPE_12__* %7, null
  br i1 %8, label %9, label %58

9:                                                ; preds = %5
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @heapremove(i32* %13, i32 %16)
  %18 = load i32, i32* @ready_ct, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* @ready_ct, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @URGENT_THRESHOLD, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %9
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @global_stat, i32 0, i32 1), align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @global_stat, i32 0, i32 1), align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %26, %9
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = call i32* @ms_take(i32* %40)
  store i32* %41, i32** %3, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 @twarnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %5

46:                                               ; preds = %36
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @global_stat, i32 0, i32 0), align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @global_stat, i32 0, i32 0), align 4
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @remove_waiting_conn(i32* %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %53 = call i32 @conn_reserve_job(i32* %51, %struct.TYPE_12__* %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %56 = load i32, i32* @MSG_RESERVED, align 4
  %57 = call i32 @reply_job(i32* %54, %struct.TYPE_12__* %55, i32 %56)
  br label %5

58:                                               ; preds = %5
  ret void
}

declare dso_local i32 @nanoseconds(...) #1

declare dso_local %struct.TYPE_12__* @next_awaited_job(i32) #1

declare dso_local i32 @heapremove(i32*, i32) #1

declare dso_local i32* @ms_take(i32*) #1

declare dso_local i32 @twarnx(i8*) #1

declare dso_local i32 @remove_waiting_conn(i32*) #1

declare dso_local i32 @conn_reserve_job(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @reply_job(i32*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
