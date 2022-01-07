; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_priority_queue_update_entry_key.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_priority_queue_update_entry_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priority_queue = type { i32 }

@PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.priority_queue*, i32, i64)* @turnstile_priority_queue_update_entry_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @turnstile_priority_queue_update_entry_key(%struct.priority_queue* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.priority_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.priority_queue* %0, %struct.priority_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.priority_queue*, %struct.priority_queue** %5, align 8
  %10 = call i64 @priority_queue_max_key(%struct.priority_queue* %9)
  store i64 %10, i64* %8, align 8
  %11 = load %struct.priority_queue*, %struct.priority_queue** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @priority_queue_entry_key(%struct.priority_queue* %11, i32 %12)
  %14 = load i64, i64* %7, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.priority_queue*, %struct.priority_queue** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE, align 4
  %21 = call i64 @priority_queue_entry_increase(%struct.priority_queue* %17, i32 %18, i64 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.priority_queue*, %struct.priority_queue** %5, align 8
  %26 = call i64 @priority_queue_max_key(%struct.priority_queue* %25)
  %27 = icmp ne i64 %24, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %53

29:                                               ; preds = %16
  br label %51

30:                                               ; preds = %3
  %31 = load %struct.priority_queue*, %struct.priority_queue** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @priority_queue_entry_key(%struct.priority_queue* %31, i32 %32)
  %34 = load i64, i64* %7, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load %struct.priority_queue*, %struct.priority_queue** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* @PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE, align 4
  %41 = call i64 @priority_queue_entry_decrease(%struct.priority_queue* %37, i32 %38, i64 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.priority_queue*, %struct.priority_queue** %5, align 8
  %46 = call i64 @priority_queue_max_key(%struct.priority_queue* %45)
  %47 = icmp ne i64 %44, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %53

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %30
  br label %51

51:                                               ; preds = %50, %29
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %43, %23
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @priority_queue_max_key(%struct.priority_queue*) #1

declare dso_local i64 @priority_queue_entry_key(%struct.priority_queue*, i32) #1

declare dso_local i64 @priority_queue_entry_increase(%struct.priority_queue*, i32, i64, i32) #1

declare dso_local i64 @priority_queue_entry_decrease(%struct.priority_queue*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
