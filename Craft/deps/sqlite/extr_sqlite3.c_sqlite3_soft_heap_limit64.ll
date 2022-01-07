; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_soft_heap_limit64.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_sqlite3_soft_heap_limit64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@mem0 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@softHeapLimitEnforcer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_soft_heap_limit64(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i32 (...) @sqlite3_initialize()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem0, i32 0, i32 1), align 4
  %13 = call i32 @sqlite3_mutex_enter(i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem0, i32 0, i32 0), align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem0, i32 0, i32 1), align 4
  %16 = call i32 @sqlite3_mutex_leave(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %42

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @softHeapLimitEnforcer, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @sqlite3MemoryAlarm(i32 %25, i32 0, i32 %26)
  br label %30

28:                                               ; preds = %21
  %29 = call i32 @sqlite3MemoryAlarm(i32 0, i32 0, i32 0)
  br label %30

30:                                               ; preds = %28, %24
  %31 = call i32 (...) @sqlite3_memory_used()
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 2147483647
  %39 = call i32 @sqlite3_release_memory(i32 %38)
  br label %40

40:                                               ; preds = %36, %30
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %19, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @sqlite3_initialize(...) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

declare dso_local i32 @sqlite3MemoryAlarm(i32, i32, i32) #1

declare dso_local i32 @sqlite3_memory_used(...) #1

declare dso_local i32 @sqlite3_release_memory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
